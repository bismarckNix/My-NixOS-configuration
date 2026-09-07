// This is not mine! All credit goes to Xansidev (https://github.com/Xansidev/nirimation)
// I am just robbing my own repo nirimations/roll-drop -Xansidev
// runs once per pixel of the window being animated uv is that pixels position normalized to the window, 0,0 top left, 1,1 bottom right.
vec4 animation(vec2 uv) {

    // Basic clamping progression.
    float visible = umbriel_direction > 0.0
        ? umbriel_clamped_progress : 1.0 - umbriel_clamped_progress;
    float progress = visible * visible;

    vec2 coords = (uv - vec2(0.5, 0.0)) * umbriel_size;
    coords.y += (1.0 - progress) * 1440.0 * umbriel_direction;

    // Standard 2D rotation matrix, standard formulate for rotation a point aorund the origin by angle in radians.
    // mat2(a, b, c, d) fills the matrix column-major.
    float angle = (1.0 - progress) * 0.3 * umbriel_direction;
    mat2 rotate = mat2(cos(angle), -sin(angle), sin(angle), cos(angle));
    coords = rotate * coords;

    // Return sample.
    vec2 sample_uv = coords / umbriel_size + vec2(0.5, 0.0);
    return umbriel_sample(sample_uv);
}