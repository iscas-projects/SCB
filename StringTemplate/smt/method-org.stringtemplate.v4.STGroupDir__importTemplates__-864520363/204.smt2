(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var803 0)
(declare-sort var3476 0)
(declare-sort var2295 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var3476_getText/-2014085613 (var3476) String)
(declare-fun getName/994609999 (var803) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var2295-init () var2295)
(declare-fun <init>/-630064361 (var2295 String) void)
(declare-const null-var803 var803)
(declare-const null-var3476 var3476)
(declare-const var3943 var803) ; Statement: r5 := @this: org.stringtemplate.v4.STGroupDir 
(assert (not (= var3943 null-var803)))
(declare-const var2319 var3476) ; Statement: r1 := @parameter0: org.antlr.runtime.Token 
(assert (not (= var2319 null-var3476)))
(define-const var371 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var371)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var371!1 String)
(assert (= var371!1 ""))
(assert true)
(define-const var985 String (append/672562846 var371!1 "import illegal in group files embedded in STGroupDirs; import ")) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("import illegal in group files embedded in STGroupDirs; import ") 
(declare-const var371!2 String)
(assert (= var371!2 (str.++ var371!1 "import illegal in group files embedded in STGroupDirs; import ")))
(define-const var3446 String (var3476_getText/-2014085613 var2319)) ; Statement: $r2 = interfaceinvoke r1.<org.antlr.runtime.Token: java.lang.String getText()>() 
(assert true)
(define-const var3388 String (append/672562846 var985 var3446)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var985!1 String)
(assert (= var985!1 (str.++ var985 var3446)))
(assert true)
(define-const var1113 String (append/672562846 var3388 " in STGroupDir ")) ; Statement: $r7 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" in STGroupDir ") 
(declare-const var3388!1 String)
(assert (= var3388!1 (str.++ var3388 " in STGroupDir ")))
(assert true)
(define-const var91 String (getName/994609999 var3943)) ; Statement: $r6 = virtualinvoke r5.<org.stringtemplate.v4.STGroupDir: java.lang.String getName()>() 
(assert true)
(define-const var488 String (append/672562846 var1113 var91)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6) 
(declare-const var1113!1 String)
(assert (= var1113!1 (str.++ var1113 var91)))
(assert true)
(define-const var2131 String (toString/-2075883882 var488)) ; Statement: r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var979 var2295 var2295-init) ; Statement: $r10 = new java.lang.UnsupportedOperationException 
(assert true)
;(assert (<init>/-630064361 var979 var2131)) ; Statement: specialinvoke $r10.<java.lang.UnsupportedOperationException: void <init>(java.lang.String)>(r9) 

(declare-const var979!1 var2295)
(declare-const var2131!1 String)
 ; Statement: throw $r10 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var3476_getText/-2014085613=([org.antlr.runtime.Token], java.lang.String), getName/994609999=([org.stringtemplate.v4.STGroupDir], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var2295-init=([], java.lang.UnsupportedOperationException), <init>/-630064361=([java.lang.UnsupportedOperationException, java.lang.String], void)}
; {var803=org.stringtemplate.v4.STGroupDir, var3943=r5, var3476=org.antlr.runtime.Token, var2319=r1, var371=$r0, var985=$r3, var3446=$r2, var3388=$r4, var1113=$r7, var91=$r6, var488=$r8, var2131=r9, var2295=java.lang.UnsupportedOperationException, var979=$r10}
; {org.stringtemplate.v4.STGroupDir=var803, r5=var3943, org.antlr.runtime.Token=var3476, r1=var2319, $r0=var371, $r3=var985, $r2=var3446, $r4=var3388, $r7=var1113, $r6=var91, $r8=var488, r9=var2131, java.lang.UnsupportedOperationException=var2295, $r10=var979}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r5 := @this: org.stringtemplate.v4.STGroupDir;	r1 := @parameter0: org.antlr.runtime.Token;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("import illegal in group files embedded in STGroupDirs; import ");	$r2 = interfaceinvoke r1.<org.antlr.runtime.Token: java.lang.String getText()>();	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r7 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" in STGroupDir ");	$r6 = virtualinvoke r5.<org.stringtemplate.v4.STGroupDir: java.lang.String getName()>();	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6);	r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	$r10 = new java.lang.UnsupportedOperationException;	specialinvoke $r10.<java.lang.UnsupportedOperationException: void <init>(java.lang.String)>(r9);	throw $r10
;block_num 1