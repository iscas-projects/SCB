(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1327 0)
(declare-sort var2928 0)
(declare-sort var465 0)
(declare-sort var1445 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-279557996 (var465) void)
(declare-fun cast-from-var1327-to-var465 (var1327) var465)
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(declare-fun var1445-init () var1445)
(declare-fun <init>/875830710 (var1445 String) void)
(declare-const null-var1327 var1327)
(declare-const null-String String)
(declare-const var1872 var1327) ; Statement: r0 := @this: freemarker.ext.jsp.TaglibFactory$ClasspathTldLocation 
(assert (not (= var1872 null-var1327)))
(declare-const var20 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var20 null-String)))
(assert true)
;(assert (<init>/-279557996 (cast-from-var1327-to-var465 var1872))) ; Statement: specialinvoke r0.<java.lang.Object: void <init>()>() 

(declare-const var1872!1 var1327)
(assert true)
(define-const var3047 Bool (startsWith/-1785782452 var20 "/")) ; Statement: $z0 = virtualinvoke r1.<java.lang.String: boolean startsWith(java.lang.String)>("/") 
 ; Statement: if $z0 != 0 goto r0.<freemarker.ext.jsp.TaglibFactory$ClasspathTldLocation: java.lang.String resourcePath> = r1 
(assert (not (not (= (ite var3047 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var1979 var1445 var1445-init) ; Statement: $r2 = new java.lang.IllegalArgumentException 
(assert true)
;(assert (<init>/875830710 var1979 "\u0022resourcePath\u0022 must start with /")) ; Statement: specialinvoke $r2.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>("\"resourcePath\" must start with /") 

(declare-const var1979!1 var1445)
(declare-const var3708 String)
 ; Statement: throw $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-279557996=([java.lang.Object], void), cast-from-var1327-to-var465=([freemarker.ext.jsp.TaglibFactory$ClasspathTldLocation], java.lang.Object), startsWith/-1785782452=([java.lang.String, java.lang.String], boolean), var1445-init=([], java.lang.IllegalArgumentException), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var1327=freemarker.ext.jsp.TaglibFactory$ClasspathTldLocation, var1872=r0, var20=r1, var2928=null_type, var465=java.lang.Object, var3047=$z0, var1445=java.lang.IllegalArgumentException, var1979=$r2, var3708="\"resourcePath\" must start with /"}
; {freemarker.ext.jsp.TaglibFactory$ClasspathTldLocation=var1327, r0=var1872, r1=var20, null_type=var2928, java.lang.Object=var465, $z0=var3047, java.lang.IllegalArgumentException=var1445, $r2=var1979, "\"resourcePath\" must start with /"=var3708}
;seq <java.lang.String: boolean startsWith(java.lang.String)>
;cnt {"<java.lang.String: boolean startsWith(java.lang.String)>": 1}
;stmts r0 := @this: freemarker.ext.jsp.TaglibFactory$ClasspathTldLocation;	r1 := @parameter0: java.lang.String;	specialinvoke r0.<java.lang.Object: void <init>()>();	$z0 = virtualinvoke r1.<java.lang.String: boolean startsWith(java.lang.String)>("/");	if $z0 != 0 goto r0.<freemarker.ext.jsp.TaglibFactory$ClasspathTldLocation: java.lang.String resourcePath> = r1;	$r2 = new java.lang.IllegalArgumentException;	specialinvoke $r2.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>("\"resourcePath\" must start with /");	throw $r2
;block_num 2