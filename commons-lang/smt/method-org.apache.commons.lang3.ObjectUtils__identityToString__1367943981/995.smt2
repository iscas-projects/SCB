(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var929 0)
(declare-sort var1935 0)
(declare-sort var3233 0)
(declare-sort var818 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3233_requireNonNull/1378936425 (var1935 String) var1935)
(declare-fun getClass/1258963082 (var1935) ClassObject)
(declare-fun getName/-1958580599 (ClassObject) String)
(declare-fun var818_identityHashCodeHex/834881754 (var1935) String)
(declare-fun length/-360784002 (var929) Int)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun ensureCapacity/784942214 (var929 Int) var929)
(declare-fun append/1659648310 (var929 String) var929)
(declare-fun append/551651303 (var929 Int) var929)
(declare-const null-var929 var929)
(declare-const null-var1935 var1935)
(declare-const var2641 var929) ; Statement: r4 := @parameter0: org.apache.commons.lang3.text.StrBuilder 
(assert (not (= var2641 null-var929)))
(declare-const var1464 var1935) ; Statement: r0 := @parameter1: java.lang.Object 
(assert (not (= var1464 null-var1935)))
;(assert (var3233_requireNonNull/1378936425 var1464 "object")) ; Statement: staticinvoke <java.util.Objects: java.lang.Object requireNonNull(java.lang.Object,java.lang.String)>(r0, "object") 

(declare-const var1464!1 var1935)
(declare-const var2060 String)
(assert true)
(define-const var2603 ClassObject (getClass/1258963082 var1464!1)) ; Statement: $r1 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var3498 String (getName/-1958580599 var2603)) ; Statement: r2 = virtualinvoke $r1.<java.lang.Class: java.lang.String getName()>() 
(define-const var1103 String (var818_identityHashCodeHex/834881754 var1464!1)) ; Statement: r3 = staticinvoke <org.apache.commons.lang3.ObjectUtils: java.lang.String identityHashCodeHex(java.lang.Object)>(r0) 
(assert true)
(define-const var1817 Int (length/-360784002 var2641)) ; Statement: $i1 = virtualinvoke r4.<org.apache.commons.lang3.text.StrBuilder: int length()>() 
(assert true)
(define-const var966 Int (length/-134980193 var3498)) ; Statement: $i0 = virtualinvoke r2.<java.lang.String: int length()>() 
(define-const var465 Int (+ var1817 var966)) ; Statement: $i2 = $i1 + $i0 
(define-const var2217 Int (+ var465 1)) ; Statement: $i4 = $i2 + 1 
(assert true)
(define-const var559 Int (length/-134980193 var1103)) ; Statement: $i3 = virtualinvoke r3.<java.lang.String: int length()>() 
(define-const var2718 Int (+ var2217 var559)) ; Statement: $i5 = $i4 + $i3 
(assert true)
;(assert (ensureCapacity/784942214 var2641 var2718)) ; Statement: virtualinvoke r4.<org.apache.commons.lang3.text.StrBuilder: org.apache.commons.lang3.text.StrBuilder ensureCapacity(int)>($i5) 

(declare-const var2641!1 var929)
(declare-const var2718!1 Int)
(assert true)
(define-const var3760 var929 (append/1659648310 var2641!1 var3498)) ; Statement: $r5 = virtualinvoke r4.<org.apache.commons.lang3.text.StrBuilder: org.apache.commons.lang3.text.StrBuilder append(java.lang.String)>(r2) 
(assert true)
(define-const var2234 var929 (append/551651303 var3760 64)) ; Statement: $r6 = virtualinvoke $r5.<org.apache.commons.lang3.text.StrBuilder: org.apache.commons.lang3.text.StrBuilder append(char)>(64) 
(assert true)
;(assert (append/1659648310 var2234 var1103)) ; Statement: virtualinvoke $r6.<org.apache.commons.lang3.text.StrBuilder: org.apache.commons.lang3.text.StrBuilder append(java.lang.String)>(r3) 

(declare-const var2234!1 var929)
(declare-const var1103!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var3233_requireNonNull/1378936425=([java.lang.Object, java.lang.String], java.lang.Object), getClass/1258963082=([java.lang.Object], java.lang.Class), getName/-1958580599=([java.lang.Class], java.lang.String), var818_identityHashCodeHex/834881754=([java.lang.Object], java.lang.String), length/-360784002=([org.apache.commons.lang3.text.StrBuilder], int), length/-134980193=([java.lang.String], int), ensureCapacity/784942214=([org.apache.commons.lang3.text.StrBuilder, int], org.apache.commons.lang3.text.StrBuilder), append/1659648310=([org.apache.commons.lang3.text.StrBuilder, java.lang.String], org.apache.commons.lang3.text.StrBuilder), append/551651303=([org.apache.commons.lang3.text.StrBuilder, char], org.apache.commons.lang3.text.StrBuilder)}
; {var929=org.apache.commons.lang3.text.StrBuilder, var2641=r4, var1935=java.lang.Object, var1464=r0, var3233=java.util.Objects, var2060="object", var2603=$r1, var3498=r2, var818=org.apache.commons.lang3.ObjectUtils, var1103=r3, var1817=$i1, var966=$i0, var465=$i2, var2217=$i4, var559=$i3, var2718=$i5, var3760=$r5, var2234=$r6}
; {org.apache.commons.lang3.text.StrBuilder=var929, r4=var2641, java.lang.Object=var1935, r0=var1464, java.util.Objects=var3233, "object"=var2060, $r1=var2603, r2=var3498, org.apache.commons.lang3.ObjectUtils=var818, r3=var1103, $i1=var1817, $i0=var966, $i2=var465, $i4=var2217, $i3=var559, $i5=var2718, $r5=var3760, $r6=var2234}
;seq <java.lang.String: int length()>;	<java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 2}
;stmts r4 := @parameter0: org.apache.commons.lang3.text.StrBuilder;	r0 := @parameter1: java.lang.Object;	staticinvoke <java.util.Objects: java.lang.Object requireNonNull(java.lang.Object,java.lang.String)>(r0, "object");	$r1 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>();	r2 = virtualinvoke $r1.<java.lang.Class: java.lang.String getName()>();	r3 = staticinvoke <org.apache.commons.lang3.ObjectUtils: java.lang.String identityHashCodeHex(java.lang.Object)>(r0);	$i1 = virtualinvoke r4.<org.apache.commons.lang3.text.StrBuilder: int length()>();	$i0 = virtualinvoke r2.<java.lang.String: int length()>();	$i2 = $i1 + $i0;	$i4 = $i2 + 1;	$i3 = virtualinvoke r3.<java.lang.String: int length()>();	$i5 = $i4 + $i3;	virtualinvoke r4.<org.apache.commons.lang3.text.StrBuilder: org.apache.commons.lang3.text.StrBuilder ensureCapacity(int)>($i5);	$r5 = virtualinvoke r4.<org.apache.commons.lang3.text.StrBuilder: org.apache.commons.lang3.text.StrBuilder append(java.lang.String)>(r2);	$r6 = virtualinvoke $r5.<org.apache.commons.lang3.text.StrBuilder: org.apache.commons.lang3.text.StrBuilder append(char)>(64);	virtualinvoke $r6.<org.apache.commons.lang3.text.StrBuilder: org.apache.commons.lang3.text.StrBuilder append(java.lang.String)>(r3);	return
;block_num 1