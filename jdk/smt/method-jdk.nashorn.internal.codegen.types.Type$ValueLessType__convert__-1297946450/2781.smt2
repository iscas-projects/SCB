(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2290 0)
(declare-sort var1206 0)
(declare-sort var172 0)
(declare-sort var1263 0)
(declare-sort var2059 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1263-init () var1263)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var2059) String)
(declare-fun cast-from-var172-to-var2059 (var172) var2059)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-630064361 (var1263 String) void)
(declare-const null-var2290 var2290)
(declare-const null-var1206 var1206)
(declare-const null-var172 var172)
(declare-const var2346 var2290) ; Statement: r6 := @this: jdk.nashorn.internal.codegen.types.Type$ValueLessType 
(assert (not (= var2346 null-var2290)))
(declare-const var2350 var1206) ; Statement: r7 := @parameter0: jdk.internal.org.objectweb.asm.MethodVisitor 
(assert (not (= var2350 null-var1206)))
(declare-const var94 var172) ; Statement: r2 := @parameter1: jdk.nashorn.internal.codegen.types.Type 
(assert (not (= var94 null-var172)))
(define-const var136 var1263 var1263-init) ; Statement: $r0 = new java.lang.UnsupportedOperationException 
(define-const var572 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var572)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var572!1 String)
(assert (= var572!1 ""))
(assert true)
(define-const var2780 String (append/672562846 var572!1 "convert => ")) ; Statement: $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("convert => ") 
(declare-const var572!2 String)
(assert (= var572!2 (str.++ var572!1 "convert => ")))
(assert true)
(define-const var290 String (append/-1031950772 var2780 (cast-from-var172-to-var2059 var94))) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r2) 
(declare-const var2780!1 String)
(assert (str.prefixof var2780 var2780!1))
(assert true)
(define-const var435 String (toString/-2075883882 var290)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-630064361 var136 var435)) ; Statement: specialinvoke $r0.<java.lang.UnsupportedOperationException: void <init>(java.lang.String)>($r5) 

(declare-const var136!1 var1263)
(declare-const var435!1 String)
 ; Statement: throw $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var1263-init=([], java.lang.UnsupportedOperationException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var172-to-var2059=([jdk.nashorn.internal.codegen.types.Type], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-630064361=([java.lang.UnsupportedOperationException, java.lang.String], void)}
; {var2290=jdk.nashorn.internal.codegen.types.Type$ValueLessType, var2346=r6, var1206=jdk.internal.org.objectweb.asm.MethodVisitor, var2350=r7, var172=jdk.nashorn.internal.codegen.types.Type, var94=r2, var1263=java.lang.UnsupportedOperationException, var136=$r0, var572=$r1, var2780=$r3, var2059=java.lang.Object, var290=$r4, var435=$r5}
; {jdk.nashorn.internal.codegen.types.Type$ValueLessType=var2290, r6=var2346, jdk.internal.org.objectweb.asm.MethodVisitor=var1206, r7=var2350, jdk.nashorn.internal.codegen.types.Type=var172, r2=var94, java.lang.UnsupportedOperationException=var1263, $r0=var136, $r1=var572, $r3=var2780, java.lang.Object=var2059, $r4=var290, $r5=var435}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r6 := @this: jdk.nashorn.internal.codegen.types.Type$ValueLessType;	r7 := @parameter0: jdk.internal.org.objectweb.asm.MethodVisitor;	r2 := @parameter1: jdk.nashorn.internal.codegen.types.Type;	$r0 = new java.lang.UnsupportedOperationException;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("convert => ");	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r0.<java.lang.UnsupportedOperationException: void <init>(java.lang.String)>($r5);	throw $r0
;block_num 1