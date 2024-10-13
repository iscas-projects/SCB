(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3252 0)
(declare-sort var1366 0)
(declare-sort var429 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var429-init () var429)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1166366385 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-630064361 (var429 String) void)
(declare-const null-var3252 var3252)
(declare-const null-var1366 var1366)
(declare-const null-Bool Bool)
(declare-const var1241 var3252) ; Statement: r5 := @this: jdk.nashorn.internal.codegen.types.IntType 
(assert (not (= var1241 null-var3252)))
(declare-const var3034 var1366) ; Statement: r6 := @parameter0: jdk.internal.org.objectweb.asm.MethodVisitor 
(assert (not (= var3034 null-var1366)))
(declare-const var1686 Bool) ; Statement: z0 := @parameter1: boolean 
(assert (not (= var1686 null-Bool)))
(define-const var405 var429 var429-init) ; Statement: $r0 = new java.lang.UnsupportedOperationException 
(define-const var1839 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1839)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1839!1 String)
(assert (= var1839!1 ""))
(assert true)
(define-const var552 String (append/672562846 var1839!1 "cmp")) ; Statement: $r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("cmp") 
(declare-const var1839!2 String)
(assert (= var1839!2 (str.++ var1839!1 "cmp")))
 ; Statement: if z0 == 0 goto $c0 = 108 
(assert (not (= (ite var1686 1 0) 0))) ; Negate: Cond: z0 == 0  
(define-const var1264 Int 103) ; Statement: $c0 = 103 
 ; Statement: goto [?= $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c0)] 
(assert true) ; Non Conditional
(assert true)
(define-const var153 String (append/-1166366385 var552 var1264)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c0) 
(declare-const var552!1 String)
(assert (str.prefixof var552 var552!1))
(assert true)
(define-const var373 String (toString/-2075883882 var153)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-630064361 var405 var373)) ; Statement: specialinvoke $r0.<java.lang.UnsupportedOperationException: void <init>(java.lang.String)>($r4) 

(declare-const var405!1 var429)
(declare-const var373!1 String)
 ; Statement: throw $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var429-init=([], java.lang.UnsupportedOperationException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-630064361=([java.lang.UnsupportedOperationException, java.lang.String], void)}
; {var3252=jdk.nashorn.internal.codegen.types.IntType, var1241=r5, var1366=jdk.internal.org.objectweb.asm.MethodVisitor, var3034=r6, var1686=z0, var429=java.lang.UnsupportedOperationException, var405=$r0, var1839=$r1, var552=$r2, var1264=$c0, var153=$r3, var373=$r4}
; {jdk.nashorn.internal.codegen.types.IntType=var3252, r5=var1241, jdk.internal.org.objectweb.asm.MethodVisitor=var1366, r6=var3034, z0=var1686, java.lang.UnsupportedOperationException=var429, $r0=var405, $r1=var1839, $r2=var552, $c0=var1264, $r3=var153, $r4=var373}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r5 := @this: jdk.nashorn.internal.codegen.types.IntType;	r6 := @parameter0: jdk.internal.org.objectweb.asm.MethodVisitor;	z0 := @parameter1: boolean;	$r0 = new java.lang.UnsupportedOperationException;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("cmp");	if z0 == 0 goto $c0 = 108;	$c0 = 103;	goto [?= $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c0)];	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c0);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r0.<java.lang.UnsupportedOperationException: void <init>(java.lang.String)>($r4);	throw $r0
;block_num 3