(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1215 0)
(declare-sort var1324 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1215 var1215)
(declare-const null-String String)
(declare-const var1953 var1215) ; Statement: r6 := @this: jdk.nashorn.api.scripting.NashornScriptEngineFactory 
(assert (not (= var1953 null-var1215)))
(declare-const var2263 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var2263 null-String)))
(define-const var440 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var440)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var440!1 String)
(assert (= var440!1 ""))
(assert true)
(define-const var3030 String (append/672562846 var440!1 "print(")) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("print(") 
(declare-const var440!2 String)
(assert (= var440!2 (str.++ var440!1 "print(")))
(assert true)
(define-const var2527 String (append/672562846 var3030 var2263)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var3030!1 String)
(assert (= var3030!1 (str.++ var3030 var2263)))
(assert true)
(define-const var673 String (append/672562846 var2527 ")")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(declare-const var2527!1 String)
(assert (= var2527!1 (str.++ var2527 ")")))
(assert true)
(define-const var1005 String (toString/-2075883882 var673)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1215=jdk.nashorn.api.scripting.NashornScriptEngineFactory, var1953=r6, var2263=r1, var1324=null_type, var440=$r0, var3030=$r2, var2527=$r3, var673=$r4, var1005=$r5}
; {jdk.nashorn.api.scripting.NashornScriptEngineFactory=var1215, r6=var1953, r1=var2263, null_type=var1324, $r0=var440, $r2=var3030, $r3=var2527, $r4=var673, $r5=var1005}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r6 := @this: jdk.nashorn.api.scripting.NashornScriptEngineFactory;	r1 := @parameter0: java.lang.String;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("print(");	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	return $r5
;block_num 1