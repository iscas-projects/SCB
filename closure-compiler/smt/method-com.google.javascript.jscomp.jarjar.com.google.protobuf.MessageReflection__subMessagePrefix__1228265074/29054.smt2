(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3738 0)
(declare-sort var44 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/-1061048412 ((s String)) String s)
(declare-fun isExtension/-669778521 (var44) Bool)
(declare-fun getName/-2025161712 (var44) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun append/-1166366385 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-String String)
(declare-const null-var44 var44)
(declare-const null-Int Int)
(declare-const var2964 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var2964 null-String)))
(declare-const var2825 var44) ; Statement: r2 := @parameter1: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor 
(assert (not (= var2825 null-var44)))
(declare-const var2947 Int) ; Statement: i0 := @parameter2: int 
(assert (not (= var2947 null-Int)))
(define-const var3974 String String-init) ; Statement: $r10 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/-1061048412 var3974 var2964)) ; Statement: specialinvoke $r10.<java.lang.StringBuilder: void <init>(java.lang.String)>(r1) 
(declare-const var3974!1 String)
(assert (= var3974!1 var2964))
(assert true)
(define-const var2675 Bool (isExtension/-669778521 var2825)) ; Statement: $z0 = virtualinvoke r2.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor: boolean isExtension()>() 
 ; Statement: if $z0 == 0 goto $r3 = virtualinvoke r2.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor: java.lang.String getName()>() 
(assert (= (ite var2675 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var997 String (getName/-2025161712 var2825)) ; Statement: $r3 = virtualinvoke r2.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor: java.lang.String getName()>() 
(assert true)
;(assert (append/672562846 var3974!1 var997)) ; Statement: virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var3974!2 String)
(assert (= var3974!2 (str.++ var3974!1 var997)))
(assert true) ; Non Conditional
(define-const var3617 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i2 = (int) -1 
 ; Statement: if i0 == $i2 goto virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(46) 
(assert (= var2947 var3617)) ; Cond: i0 == $i2 
(assert true)
;(assert (append/-1166366385 var3974!2 46)) ; Statement: virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(46) 
(declare-const var3974!3 String)
(assert (str.prefixof var3974!2 var3974!3))
(assert true)
(define-const var1138 String (toString/-2075883882 var3974!3)) ; Statement: $r4 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/-1061048412=([java.lang.StringBuilder, java.lang.String], void), isExtension/-669778521=([com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor], boolean), getName/-2025161712=([com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), cast-from-Int-to-Int=([int], int), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2964=r1, var3738=null_type, var44=com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor, var2825=r2, var2947=i0, var3974=$r10, var2675=$z0, var997=$r3, var3617=$i2, var1138=$r4}
; {r1=var2964, null_type=var3738, com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor=var44, r2=var2825, i0=var2947, $r10=var3974, $z0=var2675, $r3=var997, $i2=var3617, $r4=var1138}
;seq <java.lang.StringBuilder: void <init>(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @parameter0: java.lang.String;	r2 := @parameter1: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor;	i0 := @parameter2: int;	$r10 = new java.lang.StringBuilder;	specialinvoke $r10.<java.lang.StringBuilder: void <init>(java.lang.String)>(r1);	$z0 = virtualinvoke r2.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor: boolean isExtension()>();	if $z0 == 0 goto $r3 = virtualinvoke r2.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor: java.lang.String getName()>();	$r3 = virtualinvoke r2.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor: java.lang.String getName()>();	virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$i2 = (int) -1;	if i0 == $i2 goto virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(46);	virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(46);	$r4 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	return $r4
;block_num 4