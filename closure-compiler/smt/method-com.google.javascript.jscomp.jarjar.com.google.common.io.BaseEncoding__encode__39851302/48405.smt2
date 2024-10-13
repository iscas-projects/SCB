(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2419 0)
(declare-sort var1662 0)
(declare-sort var2612 0)
(declare-sort var1039 0)
(declare-sort var175 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getLength-Arr-Int-1 ((Array Int Int)) Int)
(declare-fun var1662_checkPositionIndexes/224088529 (Int Int Int) void)
(declare-fun String-init () String)
(declare-fun maxEncodedSize/-620556254 (var2419 Int) Int)
(declare-fun <init>/543593434 (String Int) void)
(declare-fun var1039-init () var1039)
(declare-fun <init>/582965326 (var1039 var175) void)
(declare-fun cast-from-var2612-to-var175 (var2612) var175)
(declare-const null-var2419 var2419)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const null-Int Int)
(declare-const null-var2612 var2612)
(declare-const var1441 var2419) ; Statement: r2 := @this: com.google.javascript.jscomp.jarjar.com.google.common.io.BaseEncoding 
(assert (not (= var1441 null-var2419)))
(declare-const var1667 (Array Int Int)) ; Statement: r0 := @parameter0: byte[] 
(assert (not (= var1667 null-__Array__Int__Int__)))
(declare-const var850 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var850 null-Int)))
(declare-const var3564 Int) ; Statement: i1 := @parameter2: int 
(assert (not (= var3564 null-Int)))
(define-const var3305 Int (+ var850 var3564)) ; Statement: $i3 = i0 + i1 
(define-const var3513 Int (getLength-Arr-Int-1 var1667)) ; Statement: $i2 = lengthof r0 
;(assert (var1662_checkPositionIndexes/224088529 var850 var3305 var3513)) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkPositionIndexes(int,int,int)>(i0, $i3, $i2) 

(declare-const var850!1 Int)
(declare-const var3305!1 Int)
(declare-const var3513!1 Int)
(define-const var2788 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
(define-const var3002 Int (maxEncodedSize/-620556254 var1441 var3564)) ; Statement: $i4 = virtualinvoke r2.<com.google.javascript.jscomp.jarjar.com.google.common.io.BaseEncoding: int maxEncodedSize(int)>(i1) 
(assert true)
;(assert (<init>/543593434 var2788 var3002)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>(int)>($i4) 

(declare-const var2788!1 String)
(declare-const var3002!1 Int)
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var1525 var2612) ; Statement: $r4 := @caughtexception 
(assert (not (= var1525 null-var2612)))
(define-const var3335 var1039 var1039-init) ; Statement: $r5 = new java.lang.AssertionError 
(assert true)
;(assert (<init>/582965326 var3335 (cast-from-var2612-to-var175 var1525))) ; Statement: specialinvoke $r5.<java.lang.AssertionError: void <init>(java.lang.Object)>($r4) 

(declare-const var3335!1 var1039)
(declare-const var1525!1 var2612)
 ; Statement: throw $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {getLength-Arr-Int-1=([byte[]], int), var1662_checkPositionIndexes/224088529=([int, int, int], void), String-init=([], java.lang.StringBuilder), maxEncodedSize/-620556254=([com.google.javascript.jscomp.jarjar.com.google.common.io.BaseEncoding, int], int), <init>/543593434=([java.lang.StringBuilder, int], void), var1039-init=([], java.lang.AssertionError), <init>/582965326=([java.lang.AssertionError, java.lang.Object], void), cast-from-var2612-to-var175=([java.io.IOException], java.lang.Object)}
; {var2419=com.google.javascript.jscomp.jarjar.com.google.common.io.BaseEncoding, var1441=r2, var1667=r0, var850=i0, var3564=i1, var3305=$i3, var3513=$i2, var1662=com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions, var2788=$r1, var3002=$i4, var2612=java.io.IOException, var1525=$r4, var1039=java.lang.AssertionError, var3335=$r5, var175=java.lang.Object}
; {com.google.javascript.jscomp.jarjar.com.google.common.io.BaseEncoding=var2419, r2=var1441, r0=var1667, i0=var850, i1=var3564, $i3=var3305, $i2=var3513, com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions=var1662, $r1=var2788, $i4=var3002, java.io.IOException=var2612, $r4=var1525, java.lang.AssertionError=var1039, $r5=var3335, java.lang.Object=var175}
;seq <java.lang.StringBuilder: void <init>(int)>
;cnt {"<java.lang.StringBuilder: void <init>(int)>": 1}
;stmts r2 := @this: com.google.javascript.jscomp.jarjar.com.google.common.io.BaseEncoding;	r0 := @parameter0: byte[];	i0 := @parameter1: int;	i1 := @parameter2: int;	$i3 = i0 + i1;	$i2 = lengthof r0;	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkPositionIndexes(int,int,int)>(i0, $i3, $i2);	$r1 = new java.lang.StringBuilder;	$i4 = virtualinvoke r2.<com.google.javascript.jscomp.jarjar.com.google.common.io.BaseEncoding: int maxEncodedSize(int)>(i1);	specialinvoke $r1.<java.lang.StringBuilder: void <init>(int)>($i4);	$r4 := @caughtexception;	$r5 = new java.lang.AssertionError;	specialinvoke $r5.<java.lang.AssertionError: void <init>(java.lang.Object)>($r4);	throw $r5
;block_num 2