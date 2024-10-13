(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1346 0)
(declare-sort var636 0)
(declare-sort var878 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var878-init () var878)
(declare-fun <init>/-2000609440 (var878 var636) void)
(declare-fun available/-913288930 (var878) Int)
(declare-fun String-init () String)
(declare-fun <init>/1906106355 (String Int) void)
(declare-fun read/-1580130659 (var878) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun close/591597944 (var878) void)
(define-fun toString/-222306083 ((s String)) String s)
(declare-const null-var1346 var1346)
(declare-const null-var636 var636)
(declare-const var3691 var1346) ; Statement: r5 := @this: org.apache.log4j.lf5.util.LogFileParser 
(assert (not (= var3691 null-var1346)))
(declare-const var9 var636) ; Statement: r1 := @parameter0: java.io.InputStream 
(assert (not (= var9 null-var636)))
(define-const var2975 var878 var878-init) ; Statement: $r7 = new java.io.BufferedInputStream 
(assert true)
;(assert (<init>/-2000609440 var2975 var9)) ; Statement: specialinvoke $r7.<java.io.BufferedInputStream: void <init>(java.io.InputStream)>(r1) 

(declare-const var2975!1 var878)
(declare-const var9!1 var636)
(assert true)
(define-const var1334 Int (available/-913288930 var2975!1)) ; Statement: i0 = virtualinvoke $r7.<java.io.BufferedInputStream: int available()>() 
 ; Statement: if i0 <= 0 goto $r9 = new java.lang.StringBuffer 
(assert (not (<= var1334 0))) ; Negate: Cond: i0 <= 0  
(define-const var3340 String String-init) ; Statement: $r8 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/1906106355 var3340 var1334)) ; Statement: specialinvoke $r8.<java.lang.StringBuffer: void <init>(int)>(i0) 

(declare-const var3340!1 String)
(declare-const var1334!1 Int)
(define-const var1059 String var3340!1) ; Statement: r6 = $r8 
 ; Statement: goto [?= $i2 = virtualinvoke $r7.<java.io.BufferedInputStream: int read()>()] 
(assert true) ; Non Conditional
(assert true)
(define-const var2333 Int (read/-1580130659 var2975!1)) ; Statement: $i2 = virtualinvoke $r7.<java.io.BufferedInputStream: int read()>() 
(define-const var2165 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i4 = (int) -1 
 ; Statement: if $i2 == $i4 goto virtualinvoke $r7.<java.io.BufferedInputStream: void close()>() 
(assert (= var2333 var2165)) ; Cond: $i2 == $i4 
(assert true)
;(assert (close/591597944 var2975!1)) ; Statement: virtualinvoke $r7.<java.io.BufferedInputStream: void close()>() 

(declare-const var2975!2 var878)
(assert true)
(define-const var3474 String (toString/-222306083 var1059)) ; Statement: $r3 = virtualinvoke r6.<java.lang.StringBuffer: java.lang.String toString()>() 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {var878-init=([], java.io.BufferedInputStream), <init>/-2000609440=([java.io.BufferedInputStream, java.io.InputStream], void), available/-913288930=([java.io.BufferedInputStream], int), String-init=([], java.lang.StringBuffer), <init>/1906106355=([java.lang.StringBuffer, int], void), read/-1580130659=([java.io.BufferedInputStream], int), cast-from-Int-to-Int=([int], int), close/591597944=([java.io.BufferedInputStream], void), toString/-222306083=([java.lang.StringBuffer], java.lang.String)}
; {var1346=org.apache.log4j.lf5.util.LogFileParser, var3691=r5, var636=java.io.InputStream, var9=r1, var878=java.io.BufferedInputStream, var2975=$r7, var1334=i0, var3340=$r8, var1059=r6, var2333=$i2, var2165=$i4, var3474=$r3}
; {org.apache.log4j.lf5.util.LogFileParser=var1346, r5=var3691, java.io.InputStream=var636, r1=var9, java.io.BufferedInputStream=var878, $r7=var2975, i0=var1334, $r8=var3340, r6=var1059, $i2=var2333, $i4=var2165, $r3=var3474}
;seq <java.lang.StringBuffer: void <init>(int)>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: void <init>(int)>": 1,"<java.lang.StringBuffer: java.lang.String toString()>": 1}
;stmts r5 := @this: org.apache.log4j.lf5.util.LogFileParser;	r1 := @parameter0: java.io.InputStream;	$r7 = new java.io.BufferedInputStream;	specialinvoke $r7.<java.io.BufferedInputStream: void <init>(java.io.InputStream)>(r1);	i0 = virtualinvoke $r7.<java.io.BufferedInputStream: int available()>();	if i0 <= 0 goto $r9 = new java.lang.StringBuffer;	$r8 = new java.lang.StringBuffer;	specialinvoke $r8.<java.lang.StringBuffer: void <init>(int)>(i0);	r6 = $r8;	goto [?= $i2 = virtualinvoke $r7.<java.io.BufferedInputStream: int read()>()];	$i2 = virtualinvoke $r7.<java.io.BufferedInputStream: int read()>();	$i4 = (int) -1;	if $i2 == $i4 goto virtualinvoke $r7.<java.io.BufferedInputStream: void close()>();	virtualinvoke $r7.<java.io.BufferedInputStream: void close()>();	$r3 = virtualinvoke r6.<java.lang.StringBuffer: java.lang.String toString()>();	return $r3
;block_num 4