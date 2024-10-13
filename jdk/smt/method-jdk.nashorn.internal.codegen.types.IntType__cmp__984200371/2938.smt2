(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1894 0)
(declare-sort var2368 0)
(declare-sort var1870 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1870-init () var1870)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1166366385 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-630064361 (var1870 String) void)
(declare-const null-var1894 var1894)
(declare-const null-var2368 var2368)
(declare-const null-Bool Bool)
(declare-const var2980 var1894) ; Statement: r5 := @this: jdk.nashorn.internal.codegen.types.IntType 
(assert (not (= var2980 null-var1894)))
(declare-const var782 var2368) ; Statement: r6 := @parameter0: jdk.internal.org.objectweb.asm.MethodVisitor 
(assert (not (= var782 null-var2368)))
(declare-const var3105 Bool) ; Statement: z0 := @parameter1: boolean 
(assert (not (= var3105 null-Bool)))
(define-const var3704 var1870 var1870-init) ; Statement: $r0 = new java.lang.UnsupportedOperationException 
(define-const var2820 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2820)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2820!1 String)
(assert (= var2820!1 ""))
(assert true)
(define-const var3713 String (append/672562846 var2820!1 "cmp")) ; Statement: $r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("cmp") 
(declare-const var2820!2 String)
(assert (= var2820!2 (str.++ var2820!1 "cmp")))
 ; Statement: if z0 == 0 goto $c0 = 108 
(assert (= (ite var3105 1 0) 0)) ; Cond: z0 == 0 
(define-const var37 Int 108) ; Statement: $c0 = 108 
(assert true) ; Non Conditional
(assert true)
(define-const var252 String (append/-1166366385 var3713 var37)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c0) 
(declare-const var3713!1 String)
(assert (str.prefixof var3713 var3713!1))
(assert true)
(define-const var2930 String (toString/-2075883882 var252)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-630064361 var3704 var2930)) ; Statement: specialinvoke $r0.<java.lang.UnsupportedOperationException: void <init>(java.lang.String)>($r4) 

(declare-const var3704!1 var1870)
(declare-const var2930!1 String)
 ; Statement: throw $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var1870-init=([], java.lang.UnsupportedOperationException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-630064361=([java.lang.UnsupportedOperationException, java.lang.String], void)}
; {var1894=jdk.nashorn.internal.codegen.types.IntType, var2980=r5, var2368=jdk.internal.org.objectweb.asm.MethodVisitor, var782=r6, var3105=z0, var1870=java.lang.UnsupportedOperationException, var3704=$r0, var2820=$r1, var3713=$r2, var37=$c0, var252=$r3, var2930=$r4}
; {jdk.nashorn.internal.codegen.types.IntType=var1894, r5=var2980, jdk.internal.org.objectweb.asm.MethodVisitor=var2368, r6=var782, z0=var3105, java.lang.UnsupportedOperationException=var1870, $r0=var3704, $r1=var2820, $r2=var3713, $c0=var37, $r3=var252, $r4=var2930}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r5 := @this: jdk.nashorn.internal.codegen.types.IntType;	r6 := @parameter0: jdk.internal.org.objectweb.asm.MethodVisitor;	z0 := @parameter1: boolean;	$r0 = new java.lang.UnsupportedOperationException;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("cmp");	if z0 == 0 goto $c0 = 108;	$c0 = 108;	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c0);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r0.<java.lang.UnsupportedOperationException: void <init>(java.lang.String)>($r4);	throw $r0
;block_num 3