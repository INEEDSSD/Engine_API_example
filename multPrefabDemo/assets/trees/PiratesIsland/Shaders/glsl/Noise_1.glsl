#if !defined(Noise_lib)
    #define Noise_lib

    vec3 mod3D289( vec3 x ) { return x - floor( x / 289.0 ) * 289.0; }

    vec4 mod3D289( vec4 x ) { return x - floor( x / 289.0 ) * 289.0; }

    vec4 permute( vec4 x ) { return mod3D289( ( x * 34.0 + 1.0 ) * x ); }

    vec4 taylorInvSqrt( vec4 r ) { return 1.79284291400159 - r * 0.85373472095314; }

    float snoise( vec3 v )
    {
        const vec2 C = vec2( 1.0 / 6.0, 1.0 / 3.0 );
        vec3 i = floor( v + dot( v, C.yyy ) );
        vec3 x0 = v - i + dot( i, C.xxx );
        vec3 g = step( x0.yzx, x0.xyz );
        vec3 l = 1.0 - g;
        vec3 i1 = min( g.xyz, l.zxy );
        vec3 i2 = max( g.xyz, l.zxy );
        vec3 x1 = x0 - i1 + C.xxx;
        vec3 x2 = x0 - i2 + C.yyy;
        vec3 x3 = x0 - 0.5;
        i = mod3D289( i);
        vec4 p = permute( permute( permute( i.z + vec4( 0.0, i1.z, i2.z, 1.0 ) ) + i.y + vec4( 0.0, i1.y, i2.y, 1.0 ) ) + i.x + vec4( 0.0, i1.x, i2.x, 1.0 ) );
        vec4 j = p - 49.0 * floor( p / 49.0 );  // mod(p,7*7)
        vec4 x_ = floor( j / 7.0 );
        vec4 y_ = floor( j - 7.0 * x_ );  // mod(j,N)
        vec4 x = ( x_ * 2.0 + 0.5 ) / 7.0 - 1.0;
        vec4 y = ( y_ * 2.0 + 0.5 ) / 7.0 - 1.0;
        vec4 h = 1.0 - abs( x ) - abs( y );
        vec4 b0 = vec4( x.xy, y.xy );
        vec4 b1 = vec4( x.zw, y.zw );
        vec4 s0 = floor( b0 ) * 2.0 + 1.0;
        vec4 s1 = floor( b1 ) * 2.0 + 1.0;
        vec4 sh = -step( h, vec4(0.0) );
        vec4 a0 = b0.xzyw + s0.xzyw * sh.xxyy;
        vec4 a1 = b1.xzyw + s1.xzyw * sh.zzww;
        vec3 g0 = vec3( a0.xy, h.x );
        vec3 g1 = vec3( a0.zw, h.y );
        vec3 g2 = vec3( a1.xy, h.z );
        vec3 g3 = vec3( a1.zw, h.w );
        vec4 norm = taylorInvSqrt( vec4( dot( g0, g0 ), dot( g1, g1 ), dot( g2, g2 ), dot( g3, g3 ) ) );
        g0 *= norm.x;
        g1 *= norm.y;
        g2 *= norm.z;
        g3 *= norm.w;
        vec4 m = max( 0.6 - vec4( dot( x0, x0 ), dot( x1, x1 ), dot( x2, x2 ), dot( x3, x3 ) ), 0.0 );
        m = m* m;
        m = m* m;
        vec4 px = vec4( dot( x0, g0 ), dot( x1, g1 ), dot( x2, g2 ), dot( x3, g3 ) );
        return 42.0 * dot( m, px);
    }


    vec3 mod2D289( vec3 x ) { return x - floor( x * ( 1.0 / 289.0 ) ) * 289.0; }

    vec2 mod2D289( vec2 x ) { return x - floor( x * ( 1.0 / 289.0 ) ) * 289.0; }

    vec3 permute( vec3 x ) { return mod2D289( ( ( x * 34.0 ) + 1.0 ) * x ); }

    float snoise( vec2 v )
    {
        const vec4 C = vec4( 0.211324865405187, 0.366025403784439, -0.577350269189626, 0.024390243902439 );
        vec2 i = floor( v + dot( v, C.yy ) );
        vec2 x0 = v - i + dot( i, C.xx );
        vec2 i1;
        i1 = ( x0.x > x0.y ) ? vec2( 1.0, 0.0 ) : vec2( 0.0, 1.0 );
        vec4 x12 = x0.xyxy + C.xxzz;
        x12.xy -= i1;
        i = mod2D289( i );
        vec3 p = permute( permute( i.y + vec3( 0.0, i1.y, 1.0 ) ) + i.x + vec3( 0.0, i1.x, 1.0 ) );
        vec3 m = max( 0.5 - vec3( dot( x0, x0 ), dot( x12.xy, x12.xy ), dot( x12.zw, x12.zw ) ), 0.0 );
        m = m * m;
        m = m * m;
        vec3 x = 2.0 * fract( p * C.www ) - 1.0;
        vec3 h = abs( x ) - 0.5;
        vec3 ox = floor( x + 0.5 );
        vec3 a0 = x - ox;
        m *= 1.79284291400159 - 0.85373472095314 * ( a0 * a0 + h * h );
        vec3 g;
        g.x = a0.x * x0.x + h.x * x0.y;
        g.yz = a0.yz * x12.xz + h.yz * x12.yw;
        return 130.0 * dot( m, g );
    }

    vec4 CalculateContrast( float contrastValue, vec4 colorTarget )
    {
        float t = 0.5 * ( 1.0 - contrastValue );
        return transpose(mat4(contrastValue,0.0,0.0,t, 0.0,contrastValue,0.0,t, 0.0,0.0,contrastValue,t, 0.0,0.0,0.0,1.0)) * colorTarget;
    }

    float Dither8x8Bayer(vec2 position)
    {
        int x = int(mod(position.x, 8.0));
        int y = int(mod(position.y, 8.0));
        int index = x + y * 8;
        float limit = 0.0;
        if(x < 8){
            if (index == 0) limit = 0.015625;
            if (index == 1) limit = 0.515625;
            if (index == 2) limit = 0.140625;
            if (index == 3) limit = 0.640625;
            if (index == 4) limit = 0.046875;
            if (index == 5) limit = 0.546875;
            if (index == 6) limit = 0.171875;
            if (index == 7) limit = 0.671875;
            if (index == 8) limit = 0.765625;
            if (index == 9) limit = 0.265625;
            if (index == 10) limit = 0.890625;
            if (index == 11) limit = 0.390625;
            if (index == 12) limit = 0.796875;
            if (index == 13) limit = 0.296875;
            if (index == 14) limit = 0.921875;
            if (index == 15) limit = 0.421875;
            if (index == 16) limit = 0.203125;
            if (index == 17) limit = 0.703125;
            if (index == 18) limit = 0.078125;
            if (index == 19) limit = 0.578125;
            if (index == 20) limit = 0.234375;
            if (index == 21) limit = 0.734375;
            if (index == 22) limit = 0.109375;
            if (index == 23) limit = 0.609375;
            if (index == 24) limit = 0.953125;
            if (index == 25) limit = 0.453125;
            if (index == 26) limit = 0.828125;
            if (index == 27) limit = 0.328125;
            if (index == 28) limit = 0.984375;
            if (index == 29) limit = 0.484375;
            if (index == 30) limit = 0.859375;
            if (index == 31) limit = 0.359375;
            if (index == 32) limit = 0.0625;
            if (index == 33) limit = 0.5625;
            if (index == 34) limit = 0.1875;
            if (index == 35) limit = 0.6875;
            if (index == 36) limit = 0.03125;
            if (index == 37) limit = 0.53125;
            if (index == 38) limit = 0.15625;
            if (index == 39) limit = 0.65625;
            if (index == 40) limit = 0.8125;
            if (index == 41) limit = 0.3125;
            if (index == 42) limit = 0.9375;
            if (index == 43) limit = 0.4375;
            if (index == 44) limit = 0.78125;
            if (index == 45) limit = 0.28125;
            if (index == 46) limit = 0.90625;
            if (index == 47) limit = 0.40625;
            if (index == 48) limit = 0.25;
            if (index == 49) limit = 0.75;
            if (index == 50) limit = 0.125;
            if (index == 51) limit = 0.625;
            if (index == 52) limit = 0.21875;
            if (index == 53) limit = 0.71875;
            if (index == 54) limit = 0.09375;
            if (index == 55) limit = 0.59375;
            if (index == 56) limit = 1.0;
            if (index == 57) limit = 0.5;
            if (index == 58) limit = 0.875;
            if (index == 59) limit = 0.375;
            if (index == 60) limit = 0.96875;
            if (index == 61) limit = 0.46875;
            if (index == 62) limit = 0.84375;
            if (index == 63) limit = 0.34375;
        }
         return limit;
    }
#endif // Noise_lib