(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2182 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String_toString/-1426662429 (String) String)
(declare-fun var2182_copyFromUtf8/1183034942 (String) var2182)
(declare-fun size/716358372 (var2182) Int)
(declare-fun arr-Int-init () (Array Int Int))
(declare-fun getLength-Arr-Int-1 ((Array Int Int)) Int)
(declare-fun var2182_copyFrom/1061793658 ((Array Int Int) Int Int) var2182)
(declare-const null-String String)
(declare-const var3954 String) ; Statement: r0 := @parameter0: java.lang.CharSequence 
(assert (not (= var3954 null-String)))
(define-const var1192 String (String_toString/-1426662429 var3954)) ; Statement: $r1 = interfaceinvoke r0.<java.lang.CharSequence: java.lang.String toString()>() 
(define-const var410 var2182 (var2182_copyFromUtf8/1183034942 var1192)) ; Statement: r2 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.ByteString: com.google.javascript.jscomp.jarjar.com.google.protobuf.ByteString copyFromUtf8(java.lang.String)>($r1) 
(assert true)
(define-const var982 Int (size/716358372 var410)) ; Statement: $i0 = virtualinvoke r2.<com.google.javascript.jscomp.jarjar.com.google.protobuf.ByteString: int size()>() 
(define-const var543 (Array Int Int) arr-Int-init) ; Statement: r3 = newarray (byte)[$i0] 
(define-const var3761 Int 0) ; Statement: i77 = 0 
(define-const var1067 Int 0) ; Statement: i78 = 0 
(assert true) ; Non Conditional
(assert true)
(define-const var1047 Int (size/716358372 var410)) ; Statement: $i1 = virtualinvoke r2.<com.google.javascript.jscomp.jarjar.com.google.protobuf.ByteString: int size()>() 
 ; Statement: if i78 >= $i1 goto $i2 = lengthof r3 
(assert (>= var1067 var1047)) ; Cond: i78 >= $i1 
(define-const var2840 Int (getLength-Arr-Int-1 var543)) ; Statement: $i2 = lengthof r3 
 ; Statement: if $i2 != i77 goto $r43 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.ByteString: com.google.javascript.jscomp.jarjar.com.google.protobuf.ByteString copyFrom(byte[],int,int)>(r3, 0, i77) 
(assert (not (= var2840 var3761))) ; Cond: $i2 != i77 
(define-const var954 var2182 (var2182_copyFrom/1061793658 var543 0 var3761)) ; Statement: $r43 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.ByteString: com.google.javascript.jscomp.jarjar.com.google.protobuf.ByteString copyFrom(byte[],int,int)>(r3, 0, i77) 
(assert true) ; Non Conditional
 ; Statement: return $r43 
(check-sat)
(get-model)
(get-unsat-core)
; {String_toString/-1426662429=([java.lang.CharSequence], java.lang.String), var2182_copyFromUtf8/1183034942=([java.lang.String], com.google.javascript.jscomp.jarjar.com.google.protobuf.ByteString), size/716358372=([com.google.javascript.jscomp.jarjar.com.google.protobuf.ByteString], int), arr-Int-init=([], byte[]), getLength-Arr-Int-1=([byte[]], int), var2182_copyFrom/1061793658=([byte[], int, int], com.google.javascript.jscomp.jarjar.com.google.protobuf.ByteString)}
; {var3954=r0, var1192=$r1, var2182=com.google.javascript.jscomp.jarjar.com.google.protobuf.ByteString, var410=r2, var982=$i0, var543=r3, var3761=i77, var1067=i78, var1047=$i1, var2840=$i2, var954=$r43}
; {r0=var3954, $r1=var1192, com.google.javascript.jscomp.jarjar.com.google.protobuf.ByteString=var2182, r2=var410, $i0=var982, r3=var543, i77=var3761, i78=var1067, $i1=var1047, $i2=var2840, $r43=var954}
;seq <java.lang.CharSequence: java.lang.String toString()>
;cnt {"<java.lang.CharSequence: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.CharSequence;	$r1 = interfaceinvoke r0.<java.lang.CharSequence: java.lang.String toString()>();	r2 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.ByteString: com.google.javascript.jscomp.jarjar.com.google.protobuf.ByteString copyFromUtf8(java.lang.String)>($r1);	$i0 = virtualinvoke r2.<com.google.javascript.jscomp.jarjar.com.google.protobuf.ByteString: int size()>();	r3 = newarray (byte)[$i0];	i77 = 0;	i78 = 0;	$i1 = virtualinvoke r2.<com.google.javascript.jscomp.jarjar.com.google.protobuf.ByteString: int size()>();	if i78 >= $i1 goto $i2 = lengthof r3;	$i2 = lengthof r3;	if $i2 != i77 goto $r43 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.ByteString: com.google.javascript.jscomp.jarjar.com.google.protobuf.ByteString copyFrom(byte[],int,int)>(r3, 0, i77);	$r43 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.ByteString: com.google.javascript.jscomp.jarjar.com.google.protobuf.ByteString copyFrom(byte[],int,int)>(r3, 0, i77);	return $r43
;block_num 5