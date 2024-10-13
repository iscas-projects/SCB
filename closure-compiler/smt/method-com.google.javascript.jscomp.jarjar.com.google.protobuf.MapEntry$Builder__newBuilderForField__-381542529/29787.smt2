(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3793 0)
(declare-sort var2847 0)
(declare-sort var1621 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun checkFieldDescriptor/127873020 (var3793 var2847) void)
(declare-fun getNumber/-1369718730 (var2847) Int)
(declare-fun var1621-init () var1621)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getFullName/-1802894463 (var2847) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1084991535 (var1621 String) void)
(declare-const null-var3793 var3793)
(declare-const null-var2847 var2847)
(declare-const var650 var3793) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.MapEntry$Builder 
(assert (not (= var650 null-var3793)))
(declare-const var2391 var2847) ; Statement: r1 := @parameter0: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor 
(assert (not (= var2391 null-var2847)))
(assert true)
;(assert (checkFieldDescriptor/127873020 var650 var2391)) ; Statement: specialinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.MapEntry$Builder: void checkFieldDescriptor(com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor)>(r1) 

(declare-const var650!1 var3793)
(declare-const var2391!1 var2847)
(assert true)
(define-const var3579 Int (getNumber/-1369718730 var2391!1)) ; Statement: $i0 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor: int getNumber()>() 
 ; Statement: if $i0 != 2 goto $r2 = new java.lang.RuntimeException 
(assert (not (= var3579 2))) ; Cond: $i0 != 2 
(define-const var2402 var1621 var1621-init) ; Statement: $r2 = new java.lang.RuntimeException 
(define-const var3787 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3787)) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3787!1 String)
(assert (= var3787!1 ""))
(assert true)
(define-const var1044 String (append/672562846 var3787!1 "\u0022")) ; Statement: $r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\"") 
(declare-const var3787!2 String)
(assert (= var3787!2 (str.++ var3787!1 "\u0022")))
(assert true)
(define-const var2938 String (getFullName/-1802894463 var2391!1)) ; Statement: $r4 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor: java.lang.String getFullName()>() 
(assert true)
(define-const var1810 String (append/672562846 var1044 var2938)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var1044!1 String)
(assert (= var1044!1 (str.++ var1044 var2938)))
(assert true)
(define-const var1070 String (append/672562846 var1810 "\u0022 is not a message value field.")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\" is not a message value field.") 
(declare-const var1810!1 String)
(assert (= var1810!1 (str.++ var1810 "\u0022 is not a message value field.")))
(assert true)
(define-const var3617 String (toString/-2075883882 var1070)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1084991535 var2402 var3617)) ; Statement: specialinvoke $r2.<java.lang.RuntimeException: void <init>(java.lang.String)>($r8) 

(declare-const var2402!1 var1621)
(declare-const var3617!1 String)
 ; Statement: throw $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {checkFieldDescriptor/127873020=([com.google.javascript.jscomp.jarjar.com.google.protobuf.MapEntry$Builder, com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor], void), getNumber/-1369718730=([com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor], int), var1621-init=([], java.lang.RuntimeException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getFullName/-1802894463=([com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1084991535=([java.lang.RuntimeException, java.lang.String], void)}
; {var3793=com.google.javascript.jscomp.jarjar.com.google.protobuf.MapEntry$Builder, var650=r0, var2847=com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor, var2391=r1, var3579=$i0, var1621=java.lang.RuntimeException, var2402=$r2, var3787=$r3, var1044=$r5, var2938=$r4, var1810=$r6, var1070=$r7, var3617=$r8}
; {com.google.javascript.jscomp.jarjar.com.google.protobuf.MapEntry$Builder=var3793, r0=var650, com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor=var2847, r1=var2391, $i0=var3579, java.lang.RuntimeException=var1621, $r2=var2402, $r3=var3787, $r5=var1044, $r4=var2938, $r6=var1810, $r7=var1070, $r8=var3617}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.MapEntry$Builder;	r1 := @parameter0: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor;	specialinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.MapEntry$Builder: void checkFieldDescriptor(com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor)>(r1);	$i0 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor: int getNumber()>();	if $i0 != 2 goto $r2 = new java.lang.RuntimeException;	$r2 = new java.lang.RuntimeException;	$r3 = new java.lang.StringBuilder;	specialinvoke $r3.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\"");	$r4 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor: java.lang.String getFullName()>();	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\" is not a message value field.");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r2.<java.lang.RuntimeException: void <init>(java.lang.String)>($r8);	throw $r2
;block_num 2