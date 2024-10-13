(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1664 0)
(declare-sort var144 0)
(declare-sort var3720 0)
(declare-sort var2274 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/1177653502 (var144) void)
(declare-fun cast-from-var1664-to-var144 (var1664) var144)
(declare-fun var3720-init () var3720)
(declare-fun <init>/-959036958 (var3720) void)
(declare-fun crc/1900907620 (var1664) var3720)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun currentChar/1900907620 (var1664) Int)
(declare-fun runLength/1900907620 (var1664) Int)
(declare-fun var2274-init () var2274)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var2274 String) void)
(declare-const null-var1664 var1664)
(declare-const null-var144 var144)
(declare-const null-Int Int)
(declare-const var1898 var1664) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.bzip2.CBZip2OutputStream 
(assert (not (= var1898 null-var1664)))
(declare-const var3946 var144) ; Statement: r2 := @parameter0: java.io.OutputStream 
(assert (not (= var3946 null-var144)))
(declare-const var380 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var380 null-Int)))
(assert true)
;(assert (<init>/1177653502 (cast-from-var1664-to-var144 var1898))) ; Statement: specialinvoke r0.<java.io.OutputStream: void <init>()>() 

(declare-const var1898!1 var1664)
(define-const var364 var3720 var3720-init) ; Statement: $r15 = new com.google.javascript.jscomp.jarjar.org.apache.tools.bzip2.CRC 
(assert true)
;(assert (<init>/-959036958 var364)) ; Statement: specialinvoke $r15.<com.google.javascript.jscomp.jarjar.org.apache.tools.bzip2.CRC: void <init>()>() 

(declare-const var364!1 var3720)
(declare-const var1898!2 var1664)
(assert (not (= var1898!2 null-var1664)))
(assert (= (crc/1900907620 var1898!2) var364!1)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.bzip2.CBZip2OutputStream: com.google.javascript.jscomp.jarjar.org.apache.tools.bzip2.CRC crc> = $r15 
(define-const var3704 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i5 = (int) -1 
(declare-const var1898!3 var1664)
(assert (not (= var1898!3 null-var1664)))
(assert (= (currentChar/1900907620 var1898!3) var3704)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.bzip2.CBZip2OutputStream: int currentChar> = $i5 
(declare-const var1898!4 var1664)
(assert (not (= var1898!4 null-var1664)))
(assert (= (runLength/1900907620 var1898!4) 0)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.bzip2.CBZip2OutputStream: int runLength> = 0 
 ; Statement: if i0 >= 1 goto (branch) 
(assert (not (>= var380 1))) ; Negate: Cond: i0 >= 1  
(define-const var2508 var2274 var2274-init) ; Statement: $r17 = new java.lang.IllegalArgumentException 
(define-const var236 String String-init) ; Statement: $r16 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var236)) ; Statement: specialinvoke $r16.<java.lang.StringBuilder: void <init>()>() 
(declare-const var236!1 String)
(assert (= var236!1 ""))
(assert true)
(define-const var534 String (append/672562846 var236!1 "blockSize(")) ; Statement: $r11 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("blockSize(") 
(declare-const var236!2 String)
(assert (= var236!2 (str.++ var236!1 "blockSize(")))
(assert true)
(define-const var1718 String (append/-1001720160 var534 var380)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var534!1 String)
(assert (str.prefixof var534 var534!1))
(assert true)
(define-const var472 String (append/672562846 var1718 ") < 1")) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(") < 1") 
(declare-const var1718!1 String)
(assert (= var1718!1 (str.++ var1718 ") < 1")))
(assert true)
(define-const var2608 String (toString/-2075883882 var472)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var2508 var2608)) ; Statement: specialinvoke $r17.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r14) 

(declare-const var2508!1 var2274)
(declare-const var2608!1 String)
 ; Statement: throw $r17 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/1177653502=([java.io.OutputStream], void), cast-from-var1664-to-var144=([com.google.javascript.jscomp.jarjar.org.apache.tools.bzip2.CBZip2OutputStream], java.io.OutputStream), var3720-init=([], com.google.javascript.jscomp.jarjar.org.apache.tools.bzip2.CRC), <init>/-959036958=([com.google.javascript.jscomp.jarjar.org.apache.tools.bzip2.CRC], void), crc/1900907620=([com.google.javascript.jscomp.jarjar.org.apache.tools.bzip2.CBZip2OutputStream], com.google.javascript.jscomp.jarjar.org.apache.tools.bzip2.CRC), cast-from-Int-to-Int=([int], int), currentChar/1900907620=([com.google.javascript.jscomp.jarjar.org.apache.tools.bzip2.CBZip2OutputStream], int), runLength/1900907620=([com.google.javascript.jscomp.jarjar.org.apache.tools.bzip2.CBZip2OutputStream], int), var2274-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var1664=com.google.javascript.jscomp.jarjar.org.apache.tools.bzip2.CBZip2OutputStream, var1898=r0, var144=java.io.OutputStream, var3946=r2, var380=i0, var3720=com.google.javascript.jscomp.jarjar.org.apache.tools.bzip2.CRC, var364=$r15, var3704=$i5, var2274=java.lang.IllegalArgumentException, var2508=$r17, var236=$r16, var534=$r11, var1718=$r12, var472=$r13, var2608=$r14}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.bzip2.CBZip2OutputStream=var1664, r0=var1898, java.io.OutputStream=var144, r2=var3946, i0=var380, com.google.javascript.jscomp.jarjar.org.apache.tools.bzip2.CRC=var3720, $r15=var364, $i5=var3704, java.lang.IllegalArgumentException=var2274, $r17=var2508, $r16=var236, $r11=var534, $r12=var1718, $r13=var472, $r14=var2608}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.bzip2.CBZip2OutputStream;	r2 := @parameter0: java.io.OutputStream;	i0 := @parameter1: int;	specialinvoke r0.<java.io.OutputStream: void <init>()>();	$r15 = new com.google.javascript.jscomp.jarjar.org.apache.tools.bzip2.CRC;	specialinvoke $r15.<com.google.javascript.jscomp.jarjar.org.apache.tools.bzip2.CRC: void <init>()>();	r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.bzip2.CBZip2OutputStream: com.google.javascript.jscomp.jarjar.org.apache.tools.bzip2.CRC crc> = $r15;	$i5 = (int) -1;	r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.bzip2.CBZip2OutputStream: int currentChar> = $i5;	r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.bzip2.CBZip2OutputStream: int runLength> = 0;	if i0 >= 1 goto (branch);	$r17 = new java.lang.IllegalArgumentException;	$r16 = new java.lang.StringBuilder;	specialinvoke $r16.<java.lang.StringBuilder: void <init>()>();	$r11 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("blockSize(");	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(") < 1");	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r17.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r14);	throw $r17
;block_num 2