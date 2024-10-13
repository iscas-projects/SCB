(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3671 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String_toString/-1426662429 (String) String)
(declare-fun var3671_copyFromUtf8/1183034942 (String) var3671)
(declare-fun size/716358372 (var3671) Int)
(declare-fun arr-Int-init () (Array Int Int))
(declare-fun getLength-Arr-Int-1 ((Array Int Int)) Int)
(declare-fun var3671_wrap/1955122121 ((Array Int Int)) var3671)
(declare-const null-String String)
(declare-const var601 String) ; Statement: r0 := @parameter0: java.lang.CharSequence 
(assert (not (= var601 null-String)))
(define-const var3315 String (String_toString/-1426662429 var601)) ; Statement: $r1 = interfaceinvoke r0.<java.lang.CharSequence: java.lang.String toString()>() 
(define-const var810 var3671 (var3671_copyFromUtf8/1183034942 var3315)) ; Statement: r2 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.ByteString: com.google.javascript.jscomp.jarjar.com.google.protobuf.ByteString copyFromUtf8(java.lang.String)>($r1) 
(assert true)
(define-const var1538 Int (size/716358372 var810)) ; Statement: $i0 = virtualinvoke r2.<com.google.javascript.jscomp.jarjar.com.google.protobuf.ByteString: int size()>() 
(define-const var1309 (Array Int Int) arr-Int-init) ; Statement: r3 = newarray (byte)[$i0] 
(define-const var2421 Int 0) ; Statement: i77 = 0 
(define-const var757 Int 0) ; Statement: i78 = 0 
(assert true) ; Non Conditional
(assert true)
(define-const var182 Int (size/716358372 var810)) ; Statement: $i1 = virtualinvoke r2.<com.google.javascript.jscomp.jarjar.com.google.protobuf.ByteString: int size()>() 
 ; Statement: if i78 >= $i1 goto $i2 = lengthof r3 
(assert (>= var757 var182)) ; Cond: i78 >= $i1 
(define-const var3555 Int (getLength-Arr-Int-1 var1309)) ; Statement: $i2 = lengthof r3 
 ; Statement: if $i2 != i77 goto $r43 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.ByteString: com.google.javascript.jscomp.jarjar.com.google.protobuf.ByteString copyFrom(byte[],int,int)>(r3, 0, i77) 
(assert (not (not (= var3555 var2421)))) ; Negate: Cond: $i2 != i77  
(define-const var1293 var3671 (var3671_wrap/1955122121 var1309)) ; Statement: $r43 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.ByteString: com.google.javascript.jscomp.jarjar.com.google.protobuf.ByteString wrap(byte[])>(r3) 
 ; Statement: goto [?= return $r43] 
(assert true) ; Non Conditional
 ; Statement: return $r43 
(check-sat)
(get-model)
(get-unsat-core)
; {String_toString/-1426662429=([java.lang.CharSequence], java.lang.String), var3671_copyFromUtf8/1183034942=([java.lang.String], com.google.javascript.jscomp.jarjar.com.google.protobuf.ByteString), size/716358372=([com.google.javascript.jscomp.jarjar.com.google.protobuf.ByteString], int), arr-Int-init=([], byte[]), getLength-Arr-Int-1=([byte[]], int), var3671_wrap/1955122121=([byte[]], com.google.javascript.jscomp.jarjar.com.google.protobuf.ByteString)}
; {var601=r0, var3315=$r1, var3671=com.google.javascript.jscomp.jarjar.com.google.protobuf.ByteString, var810=r2, var1538=$i0, var1309=r3, var2421=i77, var757=i78, var182=$i1, var3555=$i2, var1293=$r43}
; {r0=var601, $r1=var3315, com.google.javascript.jscomp.jarjar.com.google.protobuf.ByteString=var3671, r2=var810, $i0=var1538, r3=var1309, i77=var2421, i78=var757, $i1=var182, $i2=var3555, $r43=var1293}
;seq <java.lang.CharSequence: java.lang.String toString()>
;cnt {"<java.lang.CharSequence: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.CharSequence;	$r1 = interfaceinvoke r0.<java.lang.CharSequence: java.lang.String toString()>();	r2 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.ByteString: com.google.javascript.jscomp.jarjar.com.google.protobuf.ByteString copyFromUtf8(java.lang.String)>($r1);	$i0 = virtualinvoke r2.<com.google.javascript.jscomp.jarjar.com.google.protobuf.ByteString: int size()>();	r3 = newarray (byte)[$i0];	i77 = 0;	i78 = 0;	$i1 = virtualinvoke r2.<com.google.javascript.jscomp.jarjar.com.google.protobuf.ByteString: int size()>();	if i78 >= $i1 goto $i2 = lengthof r3;	$i2 = lengthof r3;	if $i2 != i77 goto $r43 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.ByteString: com.google.javascript.jscomp.jarjar.com.google.protobuf.ByteString copyFrom(byte[],int,int)>(r3, 0, i77);	$r43 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.ByteString: com.google.javascript.jscomp.jarjar.com.google.protobuf.ByteString wrap(byte[])>(r3);	goto [?= return $r43];	return $r43
;block_num 5