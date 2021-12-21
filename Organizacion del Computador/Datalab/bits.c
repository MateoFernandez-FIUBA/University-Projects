/*
 * CS:APP Data Lab
 *
 * <Please put your name and userid here>
 *
 * bits.c - Source file with your solutions to the Lab.
 *          This is the file you will hand in to your instructor.
 *
 * WARNING: Do not include the <stdio.h> header; it confuses the dlc
 * compiler. You can still use printf for debugging without including
 * <stdio.h>, although you might get a compiler warning. In general,
 * it's not good practice to ignore compiler warnings, but in this
 * case it's OK.
 */

#if 0
/*
 * Instructions to Students:
 *
 * STEP 1: Read the following instructions carefully.
 */

You will provide your solution to the Data Lab by
editing the collection of functions in this source file.

INTEGER CODING RULES:

  Replace the "return" statement in each function with one
  or more lines of C code that implements the function. Your code
  must conform to the following style:

  int Funct(arg1, arg2, ...) {
      /* brief description of how your implementation works */
      int var1 = Expr1;
      ...
      int varM = ExprM;

      varJ = ExprJ;
      ...
      varN = ExprN;
      return ExprR;
  }

  Each "Expr" is an expression using ONLY the following:
  1. Integer constants 0 through 255 (0xFF), inclusive. You are
      not allowed to use big constants such as 0xffffffff.
  2. Function arguments and local variables (no global variables).
  3. Unary integer operations ! ~
  4. Binary integer operations & ^ | + << >>

  Some of the problems restrict the set of allowed operators even further.
  Each "Expr" may consist of multiple operators. You are not restricted to
  one operator per line.

  You are expressly forbidden to:
  1. Use any control constructs such as if, do, while, for, switch, etc.
  2. Define or use any macros.
  3. Define any additional functions in this file.
  4. Call any functions.
  5. Use any other operations, such as &&, ||, -, or ?:
  6. Use any form of casting.
  7. Use any data type other than int.  This implies that you
     cannot use arrays, structs, or unions.


  You may assume that your machine:
  1. Uses 2s complement, 32-bit representations of integers.
  2. Performs right shifts arithmetically.
  3. Has unpredictable behavior when shifting if the shift amount
     is less than 0 or greater than 31.


EXAMPLES OF ACCEPTABLE CODING STYLE:
  /*
   * pow2plus1 - returns 2^x + 1, where 0 <= x <= 31
   */
  int pow2plus1(int x) {
     /* exploit ability of shifts to compute powers of 2 */
     return (1 << x) + 1;
  }

  /*
   * pow2plus4 - returns 2^x + 4, where 0 <= x <= 31
   */
  int pow2plus4(int x) {
     /* exploit ability of shifts to compute powers of 2 */
     int result = (1 << x);
     result += 4;
     return result;
  }

FLOATING POINT CODING RULES

For the problems that require you to implement floating-point operations,
the coding rules are less strict.  You are allowed to use looping and
conditional control.  You are allowed to use both ints and unsigneds.
You can use arbitrary integer and unsigned constants. You can use any arithmetic,
logical, or comparison operations on int or unsigned data.

You are expressly forbidden to:
  1. Define or use any macros.
  2. Define any additional functions in this file.
  3. Call any functions.
  4. Use any form of casting.
  5. Use any data type other than int or unsigned.  This means that you
     cannot use arrays, structs, or unions.
  6. Use any floating point data types, operations, or constants.


NOTES:
  1. Use the dlc (data lab checker) compiler (described in the handout) to
     check the legality of your solutions.
  2. Each function has a maximum number of operations (integer, logical,
     or comparison) that you are allowed to use for your implementation
     of the function.  The max operator count is checked by dlc.
     Note that assignment ('=') is not counted; you may use as many of
     these as you want without penalty.
  3. Use the btest test harness to check your functions for correctness.
  4. Use the BDD checker to formally verify your functions
  5. The maximum number of ops for each function is given in the
     header comment for each function. If there are any inconsistencies
     between the maximum ops in the writeup and in this file, consider
     this file the authoritative source.

/*
 * STEP 2: Modify the following functions according the coding rules.
 *
 *   IMPORTANT. TO AVOID GRADING SURPRISES:
 *   1. Use the dlc compiler to check that your solutions conform
 *      to the coding rules.
 *   2. Use the BDD checker to formally verify that your solutions produce
 *      the correct answers.
 */


#endif
/* Copyright (C) 1991-2020 Free Software Foundation, Inc.
   This file is part of the GNU C Library.

   The GNU C Library is free software; you can redistribute it and/or
   modify it under the terms of the GNU Lesser General Public
   License as published by the Free Software Foundation; either
   version 2.1 of the License, or (at your option) any later version.

   The GNU C Library is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
   Lesser General Public License for more details.

   You should have received a copy of the GNU Lesser General Public
   License along with the GNU C Library; if not, see
   <https://www.gnu.org/licenses/>.  */
/* This header is separate from features.h so that the compiler can
   include it implicitly at the start of every compilation.  It must
   not itself include <features.h> or any other header that includes
   <features.h> because the implicit include comes before any feature
   test macros that may be defined in a source file before it first
   explicitly includes a system header.  GCC knows the name of this
   header in order to preinclude it.  */
/* glibc's intent is to support the IEC 559 math functionality, real
   and complex.  If the GCC (4.9 and later) predefined macros
   specifying compiler intent are available, use them to determine
   whether the overall intent is to support these features; otherwise,
   presume an older compiler has intent to support these features and
   define these macros by default.  */
/* wchar_t uses Unicode 10.0.0.  Version 10.0 of the Unicode Standard is
   synchronized with ISO/IEC 10646:2017, fifth edition, plus
   the following additions from Amendment 1 to the fifth edition:
   - 56 emoji characters
   - 285 hentaigana
   - 3 additional Zanabazar Square characters */
//1
/* 
 * anyOddBit - return 1 if any odd-numbered bit in word set to 1
 *   where bits are numbered from 0 (least significant) to 31 (most significant)
 *   Examples anyOddBit(0x5) = 0, anyOddBit(0x7) = 1
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 12
 *   Rating: 2
 */
int anyOddBit(int x) {
    return !!((x | (x >> 8) | (x >> 16) | (x >> 24)) & 0xaa);
}
/*
 * isTmax - returns 1 if x is the maximum, two's complement number,
 *     and 0 otherwise 
 *   Legal ops: ! ~ & ^ | +
 *   Max ops: 10
 *   Rating: 1
 */
int isTmax(int x) {
  return !(x ^ 0x7FFFFFFF);
}
/*
 * isTmin - returns 1 if x is the minimum, two's complement number,
 *     and 0 otherwise 
 *   Legal ops: ! ~ & ^ | +
 *   Max ops: 10
 *   Rating: 1
 */
int isTmin(int x) {
    return !((x^(~x + 1)) + !x);
}
/*
 * isZero - returns 1 if x == 0, and 0 otherwise 
 *   Examples: isZero(5) = 0, isZero(0) = 1
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 2
 *   Rating: 1
 */
int isZero(int x) {
  return !(x & x);
}
/* 
 * oddBits - return word with all odd-numbered bits set to 1
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 8
 *   Rating: 2
 */
int oddBits(void) {
    int j = 0xAA;
    return j + (j << 8) + (j << 16) + (j << 24);
}
//2
/* 
 * allEvenBits - return 1 if all even-numbered bits in word set to 1
 *   where bits are numbered from 0 (least significant) to 31 (most significant)
 *   Examples allEvenBits(0xFFFFFFFE) = 0, allEvenBits(0x55555555) = 1
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 12
 *   Rating: 2
 */
int allEvenBits(int x) {
  x &= x >> 16;
  x &= x >> 8;
  x &= x >> 4;
  x &= x >> 2;
  return x&1;
}
/* 
 * anyEvenBit - return 1 if any even-numbered bit in word set to 1
 *   where bits are numbered from 0 (least significant) to 31 (most significant)
 *   Examples anyEvenBit(0xA) = 0, anyEvenBit(0xE) = 1
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 12
 *   Rating: 2
 */
int anyEvenBit(int x) {
    int j = 0x55 | (0x55<<8);
    int mascara = j | (j<<16);
    return !!(x&mascara);
}
/* 
 * copyLSB - set all bits of result to least significant bit of x
 *   Example: copyLSB(5) = 0xFFFFFFFF, copyLSB(6) = 0x00000000
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 5
 *   Rating: 2
 */
int copyLSB(int x) {
    return ((x<<31)>>31);
}
/* 
 * isEqual - return 1 if x == y, and 0 otherwise 
 *   Examples: isEqual(5,5) = 1, isEqual(4,5) = 0
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 5
 *   Rating: 2
 */
int isEqual(int x, int y) {
  return !(x^y);
}
/* 
 * isNotEqual - return 0 if x == y, and 1 otherwise 
 *   Examples: isNotEqual(5,5) = 0, isNotEqual(4,5) = 1
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 6
 *   Rating: 2
 */
int isNotEqual(int x, int y) {
  return !!(x ^ y);
}
/* 
 * leastBitPos - return a mask that marks the position of the
 *               least significant 1 bit. If x == 0, return 0
 *   Example: leastBitPos(96) = 0x20
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 6
 *   Rating: 2 
 */
int leastBitPos(int x) {
    return x & (~x+1);
}
/* 
 * sign - return 1 if positive, 0 if zero, and -1 if negative
 *  Examples: sign(130) = 1
 *            sign(-23) = -1
 *  Legal ops: ! ~ & ^ | + << >>
 *  Max ops: 10
 *  Rating: 2
 */
int sign(int x) {
    return ((unsigned)-x >> 31) - ((unsigned)x >> 31);
}
//3
/* 
 * isLess - if x < y  then return 1, else return 0 
 *   Example: isLess(4,5) = 1.
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 24
 *   Rating: 3
 */
int isLess(int x, int y) {
  // 1) X < 0, Y >= 0
  // 2) X e Y tienen el mismo signo, y X - Y es negativo
  int res = x + (~y + 1);
  int opcion_1 = x & (~y);
  int opcion_2 = (~(x ^ y)) & res;

  return (opcion_1 | opcion_2) >> 31 & 1;
}
/* 
 * isNegative - return 1 if x < 0, return 0 otherwise 
 *   Example: isNegative(-1) = 1.
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 6
 *   Rating: 2
 */
int isNegative(int x) {
  return (x >> 31) & 1;
}
/* 
 * rotateLeft - Rotate x to the left by n
 *   Can assume that 0 <= n <= 31
 *   Examples: rotateLeft(0x87654321,4) = 0x76543218
 *   Legal ops: ~ & ^ | + << >> !
 *   Max ops: 25
 *   Rating: 3 
 */
int rotateLeft(int x, int n) {
  //Shiftear a la derecha
	//Intentar borrar los 1's si x fuese negativo. (en x>>(32-n))
	//Hacer mascara de ambos y luego juntarlos 
	int unsignedmask = (0x1<<31)+(~0); //Mascara de todos los 1's menos el bit mas significativo. (0111...)
	return x<<n | (x>>(32+(~n+1)) & unsignedmask>>(31+(~n+1)));
}
/* 
 * logicalShift - shift x to the right by n, using a logical shift
 *   Can assume that 0 <= n <= 31
 *   Examples: logicalShift(0x87654321,4) = 0x08765432
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 20
 *   Rating: 3 
 */
int logicalShift(int x, int n) {
  return (x >> n) ^ (((x & (1 << 31)) >> n) << 1);
}
//4
/*
 * bitCount - returns count of number of 1's in word
 *   Examples: bitCount(5) = 2, bitCount(7) = 3
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 40
 *   Rating: 4
 */
int bitCount(int x) {
    int t = 0x55 + (0x55<<8);
    int mascara = t + (t<<16);
    x = (x&mascara) + ((x>>1)&mascara);
    
    t = 0x33 + (0x33<<8);
    mascara = t + (t<<16);
    x = (x&mascara) + ((x>>2)&mascara);
    
    t = 0xf + (0xf<<8);
    mascara = t + (t<<16);
    x = (x&mascara) + ((x>>4)&mascara);
    
    mascara = 0xff + (0xff<<16);
    x = (x&mascara) + ((x>>8)&mascara);
    
    mascara = 0xff + (0xff<<8);
    x = (x&mascara) + ((x>>16)&mascara);
    
    return x;
}
/* howManyBits - return the minimum number of bits required to represent x in
 *             two's complement
 *  Examples: howManyBits(12) = 5
 *            howManyBits(298) = 10
 *            howManyBits(-5) = 4
 *            howManyBits(0)  = 1
 *            howManyBits(-1) = 1
 *            howManyBits(0x80000000) = 32
 *  Legal ops: ! ~ & ^ | + << >>
 *  Max ops: 90
 *  Rating: 4
 */
int howManyBits(int x) {
    // 1)Invertir todos los numeros negativos.
    // 2)Aniadir 1 al resultado final dado que necesitamos que el bit mas significativo
    // represente el signo since we need the MSB to represent the sign.
    int signo, bit0, bit1, bit2, bit4, bit8, bit16;
    signo = x >> 31;
    x = (signo & ~x) | (~signo & x);

    bit16 = !!(x >> 16) << 4;
    x = x >> bit16;
    
    bit8 = !!(x >> 8) << 3;
    x = x >> bit8;
    
    bit4 = !!(x >> 4) << 2;
    x = x >> bit4;
    
    bit2 = !!(x >> 2) << 1;
    x = x >> bit2;
    
    bit1 = !!(x >> 1);
    x = x >> bit1;
    
    bit0 = x;

    return bit16 + bit8 + bit4 + bit2 + bit1 + bit0 + 1;
}
/*
 * isPower2 - returns 1 if x is a power of 2, and 0 otherwise
 *   Examples: isPower2(5) = 0, isPower2(8) = 1, isPower2(0) = 0
 *   Note that no negative number is a power of 2.
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 20
 *   Rating: 4
 */
int isPower2(int x) {
    //Dado que tiene que ser potencia de 2, podemos esperar que x-1 = 11111111...
    //Hacemos mascara x => x-1
    return !(x&(x+~0)) & (!(0x1<<31 & x)) & (!((0x1)<<31 & (x+~0)));
    //Dado que no hay numero negativo ques sea potencia de 2, no hago esa mascara.
}
/*
 * leftBitCount - returns count of number of consective 1's in
 *     left-hand (most significant) end of word.
 *   Examples: leftBitCount(-1) = 32, leftBitCount(0xFFF0F0F0) = 12
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 50
 *   Rating: 4
 */
int leftBitCount(int x) {
    //Hacer contador dependiendo de la posicion
    int temp = x;
	  int resultado;	
	  int shift;
	  int one = !(~x); 

    //Ver los primeros 16 bits y sumarlos al resultado si existen
	  resultado = !(~(temp>>16)) << 4; //Si no hay unos adelante, shifteo temp asi vuelve a cero.
	  temp = temp << resultado;

    //Veo los 8 bits restantes (32-24)
	  shift = !(~(temp >> 24)) << 3;
	  temp = temp << shift;
	  resultado = resultado | shift;

	  //4 bits restantes
	  shift = !(~(temp>>28)) << 2;
	  temp = temp << shift;
	  resultado = resultado | shift;

  	//2 bits restantes
	  shift = !(~(temp >> 30)) << 1;
  	temp = temp << shift;
	  resultado = resultado | shift;
    
    //1 bit restante
    resultado = resultado ^ (1&((temp>>31)));

    //Sumar 1 si tenemos 32 en bits
    return resultado + one;
}

//float
/* 
 * floatFloat2Int - Return bit-level equivalent of expression (int) f
 *   for floating point argument f.
 *   Argument is passed as unsigned int, but
 *   it is to be interpreted as the bit-level representation of a
 *   single-precision floating point value.
 *   Anything out of range (including NaN and infinity) should return
 *   0x80000000u.
 *   Legal ops: Any integer/unsigned operations incl. ||, &&. also if, while
 *   Max ops: 30
 *   Rating: 4
 */
int floatFloat2Int(unsigned uf) {
	  int exp =  (uf & (0x7F800000))>>23;
	  int frac = (uf & (0x007FFFFF))|(0x00800000);
	  int exponente = (exp-127);
	  unsigned signo = uf >> 31;
	  //Casos borde
	  if(exp == 0xff ){
	  	return 0x80000000u;
	  }
	  if(exponente < 0){
  		return 0;
  	}
  	if(exponente <= 23){
	  	int resultado = (frac >> (23-exponente));
	  	if(signo){
	  		return -resultado;
	  	}
	  	return resultado;
	  }
	  if(exponente <= 31) {
	  	int resultado = frac << (exponente-23);

	  	if(signo){
	  		return -resultado;
	  	}
	  	return resultado;
	  }
	  else {
	  	if(signo){ //Si el signo es negativo
	  		return -2147483648;
	  	}
	  	else {
	  		return 2147483648;
	  	}
  	}

  }
/* 
 * floatUnsigned2Float - Return bit-level equivalent of expression (float) u
 *   Result is returned as unsigned int, but
 *   it is to be interpreted as the bit-level representation of a
 *   single-precision floating point values.
 *   Legal ops: Any integer/unsigned operations incl. ||, &&. also if, while
 *   Max ops: 30
 *   Rating: 4
 */
unsigned floatUnsigned2Float(unsigned u) {
  unsigned frac;    // frac[22...0] == La parte fraccionaria del valor de punto flotante.
  unsigned exponente = 31; // exp[7...0]   == El valor del exponente de punto flotante.
  unsigned shift;
  unsigned guard, round, sticky;

  if (u == 0) {
    return 0;
  }

  while((u & (1 << exponente)) == 0) {
    exponente--;
  }

  if (exponente >= 23) {
    shift = exponente - 23;
    guard = u & (1 << shift);
    round = u & (1 << (shift - 1));
    sticky = u & ((~0) + (1 << (shift - 1)));

    frac = u >> (exponente - 23);

    if ((round && sticky) || (round && guard)) {
      frac = frac + 1;
    }
  } else {
    frac = u << (23 - exponente);
  }

  return ((exponente + 127) << 23) | (frac & ((~0) + (1 << 23)));
}
/* 
 * floatPower2 - Return bit-level equivalent of the expression 2.0^x
 *   (2.0 raised to the power x) for any 32-bit integer x.
 *
 *   The unsigned value that is returned should have the identical bit
 *   representation as the single-precision floating-point number 2.0^x.
 *   If the result is too small to be represented as a denorm, return
 *   0. If too large, return +INF.
 * 
 *   Legal ops: Any integer/unsigned operations incl. ||, &&. Also if, while 
 *   Max ops: 30 
 *   Rating: 4
 */
unsigned floatPower2(int x) {
    if (x < -150)
        return 0;
    if (x <= -127)
        return 1 << (x + 127);
    if (x <= 128)
        return (x + 127) << 23;
    return 0x7F800000;  // Infinito
}

/* 
 * floatScale64 - Return bit-level equivalent of expression 64*f for
 *   floating point argument f.
 *   Both the argument and result are passed as unsigned int's, but
 *   they are to be interpreted as the bit-level representation of
 *   single-precision floating point values.
 *   When argument is NaN, return argument
 *   Legal ops: Any integer/unsigned operations incl. ||, &&. also if, while
 *   Max ops: 35
 *   Rating: 4
 */
unsigned floatScale64(unsigned uf) {
    int signo = uf & 0x80000000;
    int contador = 6; // 2 ^ 6 = 64
    while (contador--) {
        int exponente = uf & 0x7F800000;
        int exponente_es_cero = !exponente;
        if (exponente_es_cero) {
            uf = signo | (uf << 1);
        } else if (exponente != 0x7F800000) {
            uf = uf + 0x800000;
            exponente = uf & 0x7F800000;

            if (exponente == 0x7F800000) { // Chequeo si es mas grande que infinito
                uf = uf & 0xFF800000;
            }
        }
    }
    return uf;
}