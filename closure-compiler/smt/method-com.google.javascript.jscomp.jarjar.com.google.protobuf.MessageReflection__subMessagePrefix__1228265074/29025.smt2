(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3065 0)
(declare-sort var2857 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/-1061048412 ((s String)) String s)
(declare-fun isExtension/-669778521 (var2857) Bool)
(declare-fun append/-1166366385 (String Int) String)
(declare-fun getFullName/-1802894463 (var2857) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-String String)
(declare-const null-var2857 var2857)
(declare-const null-Int Int)
(declare-const var1900 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var1900 null-String)))
(declare-const var1706 var2857) ; Statement: r2 := @parameter1: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor 
(assert (not (= var1706 null-var2857)))
(declare-const var3379 Int) ; Statement: i0 := @parameter2: int 
(assert (not (= var3379 null-Int)))
(define-const var1663 String String-init) ; Statement: $r10 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/-1061048412 var1663 var1900)) ; Statement: specialinvoke $r10.<java.lang.StringBuilder: void <init>(java.lang.String)>(r1) 
(declare-const var1663!1 String)
(assert (= var1663!1 var1900))
(assert true)
(define-const var1271 Bool (isExtension/-669778521 var1706)) ; Statement: $z0 = virtualinvoke r2.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor: boolean isExtension()>() 
 ; Statement: if $z0 == 0 goto $r3 = virtualinvoke r2.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor: java.lang.String getName()>() 
(assert (not (= (ite var1271 1 0) 0))) ; Negate: Cond: $z0 == 0  
(assert true)
(define-const var2414 String (append/-1166366385 var1663!1 40)) ; Statement: $r8 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(40) 
(declare-const var1663!2 String)
(assert (str.prefixof var1663!1 var1663!2))
(assert true)
(define-const var3971 String (getFullName/-1802894463 var1706)) ; Statement: $r7 = virtualinvoke r2.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor: java.lang.String getFullName()>() 
(assert true)
(define-const var374 String (append/672562846 var2414 var3971)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7) 
(declare-const var2414!1 String)
(assert (= var2414!1 (str.++ var2414 var3971)))
(assert true)
;(assert (append/-1166366385 var374 41)) ; Statement: virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41) 
(declare-const var374!1 String)
(assert (str.prefixof var374 var374!1))
 ; Statement: goto [?= $i2 = (int) -1] 
(assert true) ; Non Conditional
(define-const var2999 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i2 = (int) -1 
 ; Statement: if i0 == $i2 goto virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(46) 
(assert (= var3379 var2999)) ; Cond: i0 == $i2 
(assert true)
;(assert (append/-1166366385 var1663!2 46)) ; Statement: virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(46) 
(declare-const var1663!3 String)
(assert (str.prefixof var1663!2 var1663!3))
(assert true)
(define-const var558 String (toString/-2075883882 var1663!3)) ; Statement: $r4 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/-1061048412=([java.lang.StringBuilder, java.lang.String], void), isExtension/-669778521=([com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor], boolean), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), getFullName/-1802894463=([com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), cast-from-Int-to-Int=([int], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1900=r1, var3065=null_type, var2857=com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor, var1706=r2, var3379=i0, var1663=$r10, var1271=$z0, var2414=$r8, var3971=$r7, var374=$r9, var2999=$i2, var558=$r4}
; {r1=var1900, null_type=var3065, com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor=var2857, r2=var1706, i0=var3379, $r10=var1663, $z0=var1271, $r8=var2414, $r7=var3971, $r9=var374, $i2=var2999, $r4=var558}
;seq <java.lang.StringBuilder: void <init>(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @parameter0: java.lang.String;	r2 := @parameter1: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor;	i0 := @parameter2: int;	$r10 = new java.lang.StringBuilder;	specialinvoke $r10.<java.lang.StringBuilder: void <init>(java.lang.String)>(r1);	$z0 = virtualinvoke r2.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor: boolean isExtension()>();	if $z0 == 0 goto $r3 = virtualinvoke r2.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor: java.lang.String getName()>();	$r8 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(40);	$r7 = virtualinvoke r2.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor: java.lang.String getFullName()>();	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7);	virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41);	goto [?= $i2 = (int) -1];	$i2 = (int) -1;	if i0 == $i2 goto virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(46);	virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(46);	$r4 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	return $r4
;block_num 4