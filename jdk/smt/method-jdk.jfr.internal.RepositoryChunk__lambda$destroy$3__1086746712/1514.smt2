(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1731 0)
(declare-sort var707 0)
(declare-sort var1256 0)
(declare-sort var537 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun unFinishedFile/1653940871 (var1731) var1256)
(declare-fun toString/-51605341 (var1256) String)
(declare-fun getMessage/849299655 (var537) String)
(declare-fun cast-from-var707-to-var537 (var707) var537)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1731 var1731)
(declare-const null-var707 var707)
(declare-const var1433 var1731) ; Statement: r1 := @this: jdk.jfr.internal.RepositoryChunk 
(assert (not (= var1433 null-var1731)))
(declare-const var1255 var707) ; Statement: r6 := @parameter0: java.io.IOException 
(assert (not (= var1255 null-var707)))
(define-const var2036 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2036)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2036!1 String)
(assert (= var2036!1 ""))
(assert true)
(define-const var3673 String (append/672562846 var2036!1 "Could not close random access file: ")) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Could not close random access file: ") 
(declare-const var2036!2 String)
(assert (= var2036!2 (str.++ var2036!1 "Could not close random access file: ")))
(define-const var2120 var1256 (unFinishedFile/1653940871 var1433)) ; Statement: $r2 = r1.<jdk.jfr.internal.RepositoryChunk: jdk.jfr.internal.SecuritySupport$SafePath unFinishedFile> 
(assert true)
(define-const var2272 String (toString/-51605341 var2120)) ; Statement: $r3 = virtualinvoke $r2.<jdk.jfr.internal.SecuritySupport$SafePath: java.lang.String toString()>() 
(assert true)
(define-const var1336 String (append/672562846 var3673 var2272)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var3673!1 String)
(assert (= var3673!1 (str.++ var3673 var2272)))
(assert true)
(define-const var1226 String (append/672562846 var1336 ". File will not be deleted due to: ")) ; Statement: $r8 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(". File will not be deleted due to: ") 
(declare-const var1336!1 String)
(assert (= var1336!1 (str.++ var1336 ". File will not be deleted due to: ")))
(assert true)
(define-const var2829 String (getMessage/849299655 (cast-from-var707-to-var537 var1255))) ; Statement: $r7 = virtualinvoke r6.<java.io.IOException: java.lang.String getMessage()>() 
(assert true)
(define-const var2351 String (append/672562846 var1226 var2829)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7) 
(declare-const var1226!1 String)
(assert (= var1226!1 (str.++ var1226 var2829)))
(assert true)
(define-const var2453 String (toString/-2075883882 var2351)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r10 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), unFinishedFile/1653940871=([jdk.jfr.internal.RepositoryChunk], jdk.jfr.internal.SecuritySupport$SafePath), toString/-51605341=([jdk.jfr.internal.SecuritySupport$SafePath], java.lang.String), getMessage/849299655=([java.lang.Throwable], java.lang.String), cast-from-var707-to-var537=([java.io.IOException], java.lang.Throwable), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1731=jdk.jfr.internal.RepositoryChunk, var1433=r1, var707=java.io.IOException, var1255=r6, var2036=$r0, var3673=$r4, var1256=jdk.jfr.internal.SecuritySupport$SafePath, var2120=$r2, var2272=$r3, var1336=$r5, var1226=$r8, var537=java.lang.Throwable, var2829=$r7, var2351=$r9, var2453=$r10}
; {jdk.jfr.internal.RepositoryChunk=var1731, r1=var1433, java.io.IOException=var707, r6=var1255, $r0=var2036, $r4=var3673, jdk.jfr.internal.SecuritySupport$SafePath=var1256, $r2=var2120, $r3=var2272, $r5=var1336, $r8=var1226, java.lang.Throwable=var537, $r7=var2829, $r9=var2351, $r10=var2453}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<jdk.jfr.internal.SecuritySupport$SafePath: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: jdk.jfr.internal.RepositoryChunk;	r6 := @parameter0: java.io.IOException;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Could not close random access file: ");	$r2 = r1.<jdk.jfr.internal.RepositoryChunk: jdk.jfr.internal.SecuritySupport$SafePath unFinishedFile>;	$r3 = virtualinvoke $r2.<jdk.jfr.internal.SecuritySupport$SafePath: java.lang.String toString()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r8 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(". File will not be deleted due to: ");	$r7 = virtualinvoke r6.<java.io.IOException: java.lang.String getMessage()>();	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	return $r10
;block_num 1