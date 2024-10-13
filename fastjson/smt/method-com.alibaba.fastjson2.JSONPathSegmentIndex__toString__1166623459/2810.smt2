(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1614 0)
(declare-sort var497 0)
(declare-sort var3806 0)
(declare-sort var3552 0)
(declare-sort var3338 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun index/-1393943157 (var1614) Int)
(declare-fun var497_stringSize/-1233370881 (Int) Int)
(declare-fun arr-Int-init () (Array Int Int))
(declare-fun getLength-Arr-Int-1 ((Array Int Int)) Int)
(declare-fun var497_getChars/49549998 (Int Int (Array Int Int)) void)
(declare-fun var3806_apply/1513947321 (var3806 var3338 var3338) var3338)
(declare-fun cast-from-__Array__Int__Int__-to-var3338 ((Array Int Int)) var3338)
(declare-fun cast-from-Int-to-var3338 (Int) var3338)
(declare-fun cast-from-var3338-to-String (var3338) String)
(declare-const null-var1614 var1614)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const var3552-STRING_CREATOR_JDK11 var3806)
(declare-const null-var3806 var3806)
(declare-const var3552-LATIN1 Int)
(declare-const var281 var1614) ; Statement: r0 := @this: com.alibaba.fastjson2.JSONPathSegmentIndex 
(assert (not (= var281 null-var1614)))
(define-const var750 Int (index/-1393943157 var281)) ; Statement: $i0 = r0.<com.alibaba.fastjson2.JSONPathSegmentIndex: int index> 
 ; Statement: if $i0 >= 0 goto $i1 = r0.<com.alibaba.fastjson2.JSONPathSegmentIndex: int index> 
(assert (>= var750 0)) ; Cond: $i0 >= 0 
(define-const var829 Int (index/-1393943157 var281)) ; Statement: $i1 = r0.<com.alibaba.fastjson2.JSONPathSegmentIndex: int index> 
(define-const var3286 Int (var497_stringSize/-1233370881 var829)) ; Statement: $i11 = staticinvoke <com.alibaba.fastjson2.util.IOUtils: int stringSize(int)>($i1) 
(assert true) ; Non Conditional
(define-const var1411 Int (+ var3286 2)) ; Statement: $i2 = $i11 + 2 
(define-const var2083 (Array Int Int) arr-Int-init) ; Statement: $r7 = newarray (byte)[$i2] 
(declare-const var2083!1 (Array Int Int))
(assert (not (= var2083!1 null-__Array__Int__Int__)))
(assert (= (select var2083!1 0) 91)) ; Statement: $r7[0] = 91 
(define-const var807 Int (index/-1393943157 var281)) ; Statement: $i5 = r0.<com.alibaba.fastjson2.JSONPathSegmentIndex: int index> 
(define-const var2461 Int (getLength-Arr-Int-1 var2083!1)) ; Statement: $i3 = lengthof $r7 
(define-const var1447 Int (- var2461 1)) ; Statement: $i4 = $i3 - 1 
;(assert (var497_getChars/49549998 var807 var1447 var2083!1)) ; Statement: staticinvoke <com.alibaba.fastjson2.util.IOUtils: void getChars(int,int,byte[])>($i5, $i4, $r7) 

(declare-const var807!1 Int)
(declare-const var1447!1 Int)
(declare-const var2083!2 (Array Int Int))
(define-const var2926 Int (getLength-Arr-Int-1 var2083!2)) ; Statement: $i6 = lengthof $r7 
(define-const var2384 Int (- var2926 1)) ; Statement: $i7 = $i6 - 1 
(declare-const var2083!3 (Array Int Int))
(assert (not (= var2083!3 null-__Array__Int__Int__)))
(assert (= (select var2083!3 var2384) 93)) ; Statement: $r7[$i7] = 93 
(define-const var2828 var3806 var3552-STRING_CREATOR_JDK11) ; Statement: $r1 = <com.alibaba.fastjson2.util.JDKUtils: java.util.function.BiFunction STRING_CREATOR_JDK11> 
 ; Statement: if $r1 == null goto $r2 = new java.lang.String 
(assert (not (= var2828 null-var3806))) ; Negate: Cond: $r1 == null  
(define-const var434 var3806 var3552-STRING_CREATOR_JDK11) ; Statement: $r5 = <com.alibaba.fastjson2.util.JDKUtils: java.util.function.BiFunction STRING_CREATOR_JDK11> 
(define-const var2212 Int var3552-LATIN1) ; Statement: $r4 = <com.alibaba.fastjson2.util.JDKUtils: java.lang.Byte LATIN1> 
(define-const var1350 var3338 (var3806_apply/1513947321 var434 (cast-from-__Array__Int__Int__-to-var3338 var2083!3) (cast-from-Int-to-var3338 var2212))) ; Statement: $r6 = interfaceinvoke $r5.<java.util.function.BiFunction: java.lang.Object apply(java.lang.Object,java.lang.Object)>($r7, $r4) 
(define-const var473 String (cast-from-var3338-to-String var1350)) ; Statement: r8 = (java.lang.String) $r6 
 ; Statement: goto [?= return r8] 
(assert true) ; Non Conditional
 ; Statement: return r8 
(check-sat)
(get-model)
(get-unsat-core)
; {index/-1393943157=([com.alibaba.fastjson2.JSONPathSegmentIndex], int), var497_stringSize/-1233370881=([int], int), arr-Int-init=([], byte[]), getLength-Arr-Int-1=([byte[]], int), var497_getChars/49549998=([int, int, byte[]], void), var3806_apply/1513947321=([java.util.function.BiFunction, java.lang.Object, java.lang.Object], java.lang.Object), cast-from-__Array__Int__Int__-to-var3338=([byte[]], java.lang.Object), cast-from-Int-to-var3338=([java.lang.Byte], java.lang.Object), cast-from-var3338-to-String=([java.lang.Object], java.lang.String)}
; {var1614=com.alibaba.fastjson2.JSONPathSegmentIndex, var281=r0, var750=$i0, var829=$i1, var497=com.alibaba.fastjson2.util.IOUtils, var3286=$i11, var1411=$i2, var2083=$r7, var807=$i5, var2461=$i3, var1447=$i4, var2926=$i6, var2384=$i7, var3806=java.util.function.BiFunction, var3552=com.alibaba.fastjson2.util.JDKUtils, var2828=$r1, var434=$r5, var2212=$r4, var3338=java.lang.Object, var1350=$r6, var473=r8}
; {com.alibaba.fastjson2.JSONPathSegmentIndex=var1614, r0=var281, $i0=var750, $i1=var829, com.alibaba.fastjson2.util.IOUtils=var497, $i11=var3286, $i2=var1411, $r7=var2083, $i5=var807, $i3=var2461, $i4=var1447, $i6=var2926, $i7=var2384, java.util.function.BiFunction=var3806, com.alibaba.fastjson2.util.JDKUtils=var3552, $r1=var2828, $r5=var434, $r4=var2212, java.lang.Object=var3338, $r6=var1350, r8=var473}
;seq 
;cnt {}
;stmts r0 := @this: com.alibaba.fastjson2.JSONPathSegmentIndex;	$i0 = r0.<com.alibaba.fastjson2.JSONPathSegmentIndex: int index>;	if $i0 >= 0 goto $i1 = r0.<com.alibaba.fastjson2.JSONPathSegmentIndex: int index>;	$i1 = r0.<com.alibaba.fastjson2.JSONPathSegmentIndex: int index>;	$i11 = staticinvoke <com.alibaba.fastjson2.util.IOUtils: int stringSize(int)>($i1);	$i2 = $i11 + 2;	$r7 = newarray (byte)[$i2];	$r7[0] = 91;	$i5 = r0.<com.alibaba.fastjson2.JSONPathSegmentIndex: int index>;	$i3 = lengthof $r7;	$i4 = $i3 - 1;	staticinvoke <com.alibaba.fastjson2.util.IOUtils: void getChars(int,int,byte[])>($i5, $i4, $r7);	$i6 = lengthof $r7;	$i7 = $i6 - 1;	$r7[$i7] = 93;	$r1 = <com.alibaba.fastjson2.util.JDKUtils: java.util.function.BiFunction STRING_CREATOR_JDK11>;	if $r1 == null goto $r2 = new java.lang.String;	$r5 = <com.alibaba.fastjson2.util.JDKUtils: java.util.function.BiFunction STRING_CREATOR_JDK11>;	$r4 = <com.alibaba.fastjson2.util.JDKUtils: java.lang.Byte LATIN1>;	$r6 = interfaceinvoke $r5.<java.util.function.BiFunction: java.lang.Object apply(java.lang.Object,java.lang.Object)>($r7, $r4);	r8 = (java.lang.String) $r6;	goto [?= return r8];	return r8
;block_num 5