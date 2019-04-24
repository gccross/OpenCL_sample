// Kernel block.                                      //   1
kernel void square(                                   //   2
                   global float* input,               //   3
                   global float* output)
{
    size_t i = get_global_id(0);
    output[i] = input[i] * input[i];

}
