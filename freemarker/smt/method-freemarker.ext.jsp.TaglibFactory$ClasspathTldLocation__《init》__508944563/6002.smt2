(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var985 0)
(declare-sort var3264 0)
(declare-sort var1235 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-279557996 (var1235) void)
(declare-fun cast-from-var985-to-var1235 (var985) var1235)
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(declare-fun resourcePath/924598661 (var985) String)
(declare-const null-var985 var985)
(declare-const null-String String)
(declare-const var2215 var985) ; Statement: r0 := @this: freemarker.ext.jsp.TaglibFactory$ClasspathTldLocation 
(assert (not (= var2215 null-var985)))
(declare-const var1419 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var1419 null-String)))
(assert true)
;(assert (<init>/-279557996 (cast-from-var985-to-var1235 var2215))) ; Statement: specialinvoke r0.<java.lang.Object: void <init>()>() 

(declare-const var2215!1 var985)
(assert true)
(define-const var1038 Bool (startsWith/-1785782452 var1419 "/")) ; Statement: $z0 = virtualinvoke r1.<java.lang.String: boolean startsWith(java.lang.String)>("/") 
 ; Statement: if $z0 != 0 goto r0.<freemarker.ext.jsp.TaglibFactory$ClasspathTldLocation: java.lang.String resourcePath> = r1 
(assert (not (= (ite var1038 1 0) 0))) ; Cond: $z0 != 0 
(declare-const var2215!2 var985)
(assert (not (= var2215!2 null-var985)))
(assert (= (resourcePath/924598661 var2215!2) var1419)) ; Statement: r0.<freemarker.ext.jsp.TaglibFactory$ClasspathTldLocation: java.lang.String resourcePath> = r1 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-279557996=([java.lang.Object], void), cast-from-var985-to-var1235=([freemarker.ext.jsp.TaglibFactory$ClasspathTldLocation], java.lang.Object), startsWith/-1785782452=([java.lang.String, java.lang.String], boolean), resourcePath/924598661=([freemarker.ext.jsp.TaglibFactory$ClasspathTldLocation], java.lang.String)}
; {var985=freemarker.ext.jsp.TaglibFactory$ClasspathTldLocation, var2215=r0, var1419=r1, var3264=null_type, var1235=java.lang.Object, var1038=$z0}
; {freemarker.ext.jsp.TaglibFactory$ClasspathTldLocation=var985, r0=var2215, r1=var1419, null_type=var3264, java.lang.Object=var1235, $z0=var1038}
;seq <java.lang.String: boolean startsWith(java.lang.String)>
;cnt {"<java.lang.String: boolean startsWith(java.lang.String)>": 1}
;stmts r0 := @this: freemarker.ext.jsp.TaglibFactory$ClasspathTldLocation;	r1 := @parameter0: java.lang.String;	specialinvoke r0.<java.lang.Object: void <init>()>();	$z0 = virtualinvoke r1.<java.lang.String: boolean startsWith(java.lang.String)>("/");	if $z0 != 0 goto r0.<freemarker.ext.jsp.TaglibFactory$ClasspathTldLocation: java.lang.String resourcePath> = r1;	r0.<freemarker.ext.jsp.TaglibFactory$ClasspathTldLocation: java.lang.String resourcePath> = r1;	return
;block_num 2