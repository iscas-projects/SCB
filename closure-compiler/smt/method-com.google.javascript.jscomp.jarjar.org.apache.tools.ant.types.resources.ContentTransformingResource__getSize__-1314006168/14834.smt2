(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2571 0)
(declare-sort var1949 0)
(declare-sort var1316 0)
(declare-sort var112 0)
(declare-sort var2426 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun isExists/-979912467 (var1949) Bool)
(declare-fun cast-from-var2571-to-var1949 (var2571) var1949)
(declare-fun var112-init () var112)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getName/-1774583611 (var1949) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-191906322 (var112 String var2426) void)
(declare-fun cast-from-var1316-to-var2426 (var1316) var2426)
(declare-const null-var2571 var2571)
(declare-const null-var1316 var1316)
(declare-const var3630 var2571) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.resources.ContentTransformingResource 
(assert (not (= var3630 null-var2571)))
(assert true)
(define-const var3644 Bool (isExists/-979912467 (cast-from-var2571-to-var1949 var3630))) ; Statement: $z0 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.resources.ContentTransformingResource: boolean isExists()>() 
 ; Statement: if $z0 == 0 goto return 0L 
(assert (not (= (ite var3644 1 0) 0))) ; Negate: Cond: $z0 == 0  
(declare-const var1500 var1316) ; Statement: $r1 := @caughtexception 
(assert (not (= var1500 null-var1316)))
(define-const var3353 var112 var112-init) ; Statement: $r2 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException 
(define-const var1580 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1580)) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1580!1 String)
(assert (= var1580!1 ""))
(assert true)
(define-const var3770 String (append/672562846 var1580!1 "caught exception while reading ")) ; Statement: $r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("caught exception while reading ") 
(declare-const var1580!2 String)
(assert (= var1580!2 (str.++ var1580!1 "caught exception while reading ")))
(assert true)
(define-const var699 String (getName/-1774583611 (cast-from-var2571-to-var1949 var3630))) ; Statement: $r4 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.resources.ContentTransformingResource: java.lang.String getName()>() 
(assert true)
(define-const var3325 String (append/672562846 var3770 var699)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var3770!1 String)
(assert (= var3770!1 (str.++ var3770 var699)))
(assert true)
(define-const var2788 String (toString/-2075883882 var3325)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-191906322 var3353 var2788 (cast-from-var1316-to-var2426 var1500))) ; Statement: specialinvoke $r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String,java.lang.Throwable)>($r7, $r1) 

(declare-const var3353!1 var112)
(declare-const var2788!1 String)
(declare-const var1500!1 var1316)
 ; Statement: throw $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {isExists/-979912467=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.resources.ResourceDecorator], boolean), cast-from-var2571-to-var1949=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.resources.ContentTransformingResource], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.resources.ResourceDecorator), var112-init=([], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getName/-1774583611=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.resources.ResourceDecorator], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-191906322=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, java.lang.String, java.lang.Throwable], void), cast-from-var1316-to-var2426=([java.io.IOException], java.lang.Throwable)}
; {var2571=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.resources.ContentTransformingResource, var3630=r0, var1949=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.resources.ResourceDecorator, var3644=$z0, var1316=java.io.IOException, var1500=$r1, var112=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, var3353=$r2, var1580=$r3, var3770=$r5, var699=$r4, var3325=$r6, var2788=$r7, var2426=java.lang.Throwable}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.resources.ContentTransformingResource=var2571, r0=var3630, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.resources.ResourceDecorator=var1949, $z0=var3644, java.io.IOException=var1316, $r1=var1500, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException=var112, $r2=var3353, $r3=var1580, $r5=var3770, $r4=var699, $r6=var3325, $r7=var2788, java.lang.Throwable=var2426}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.resources.ContentTransformingResource;	$z0 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.resources.ContentTransformingResource: boolean isExists()>();	if $z0 == 0 goto return 0L;	$r1 := @caughtexception;	$r2 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException;	$r3 = new java.lang.StringBuilder;	specialinvoke $r3.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("caught exception while reading ");	$r4 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.resources.ContentTransformingResource: java.lang.String getName()>();	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String,java.lang.Throwable)>($r7, $r1);	throw $r2
;block_num 2