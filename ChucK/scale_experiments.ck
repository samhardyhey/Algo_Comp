//sound chain, basic sine wave
Mandolin t => dac;
0.8 => t.gain;

//major, vanilla, hardcoded scales => to dynamically generate
[48,50,52,53,55,57,59,60] @=> int c_major[];
[50,52,54,55,57,59,61,62] @=> int d_major[];
[52,54,56,57,59,61,63,64] @=> int e_major[];
[53,55,57,58,60,62,64,65] @=> int f_major[];
[55,57,59,60,62,64,66,67] @=> int g_major[];
[57,59,61,62,64,66,68,69] @=> int a_major[];
[59,61,63,64,66,68,70,71] @=> int b_major[];

//play a single note
fun void play_single( float note, float velocity )
{
    Std.mtof( note ) => t.freq; //hardcoded for sin oscillator
}

//play sequence of notes
fun void play_sequence(int notes[]){
    for (0 => int i; i < notes.cap(); i++)
    {
        play_single( notes[i], Math.random2f( .3, .9 ) );
        400::ms => now;
    }
}

//play all scales
play_sequence(c_major);
play_sequence(d_major);
play_sequence(e_major);
play_sequence(f_major);
play_sequence(g_major);
play_sequence(a_major);
play_sequence(b_major);