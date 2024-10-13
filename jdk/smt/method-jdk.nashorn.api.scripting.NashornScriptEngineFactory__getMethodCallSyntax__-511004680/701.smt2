(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1700 0)
(declare-sort var461 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1166366385 (String Int) String)
(declare-fun getLength-Arr-String-1 ((Array Int String)) Int)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1700 var1700)
(declare-const null-String String)
(declare-const null-__Array__Int__String__ (Array Int String))
(declare-const var626 var1700) ; Statement: r12 := @this: jdk.nashorn.api.scripting.NashornScriptEngineFactory 
(assert (not (= var626 null-var1700)))
(declare-const var1773 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var1773 null-String)))
(declare-const var3746 String) ; Statement: r3 := @parameter1: java.lang.String 
(assert (not (= var3746 null-String)))
(declare-const var3764 (Array Int String)) ; Statement: r7 := @parameter2: java.lang.String[] 
(assert (not (= var3764 null-__Array__Int__String__)))
(define-const var3761 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3761)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3761!1 String)
(assert (= var3761!1 ""))
(assert true)
(define-const var1862 String (append/672562846 var3761!1 var1773)) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var3761!2 String)
(assert (= var3761!2 (str.++ var3761!1 var1773)))
(assert true)
(define-const var2700 String (append/-1166366385 var1862 46)) ; Statement: $r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(46) 
(declare-const var1862!1 String)
(assert (str.prefixof var1862 var1862!1))
(assert true)
(define-const var3607 String (append/672562846 var2700 var3746)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3) 
(declare-const var2700!1 String)
(assert (= var2700!1 (str.++ var2700 var3746)))
(assert true)
(define-const var421 String (append/-1166366385 var3607 40)) ; Statement: r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(40) 
(declare-const var3607!1 String)
(assert (str.prefixof var3607 var3607!1))
(define-const var3464 Int (getLength-Arr-String-1 var3764)) ; Statement: i0 = lengthof r7 
 ; Statement: if i0 <= 0 goto i1 = 1 
(assert (<= var3464 0)) ; Cond: i0 <= 0 
(define-const var1766 Int 1) ; Statement: i1 = 1 
(assert true) ; Non Conditional
 ; Statement: if i1 >= i0 goto virtualinvoke r6.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41) 
(assert (>= var1766 var3464)) ; Cond: i1 >= i0 
(assert true)
;(assert (append/-1166366385 var421 41)) ; Statement: virtualinvoke r6.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41) 
(declare-const var421!1 String)
(assert (str.prefixof var421 var421!1))
(assert true)
(define-const var3616 String (toString/-2075883882 var421!1)) ; Statement: $r8 = virtualinvoke r6.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), getLength-Arr-String-1=([java.lang.String[]], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1700=jdk.nashorn.api.scripting.NashornScriptEngineFactory, var626=r12, var1773=r1, var461=null_type, var3746=r3, var3764=r7, var3761=$r0, var1862=$r2, var2700=$r4, var3607=$r5, var421=r6, var3464=i0, var1766=i1, var3616=$r8}
; {jdk.nashorn.api.scripting.NashornScriptEngineFactory=var1700, r12=var626, r1=var1773, null_type=var461, r3=var3746, r7=var3764, $r0=var3761, $r2=var1862, $r4=var2700, $r5=var3607, r6=var421, i0=var3464, i1=var1766, $r8=var3616}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r12 := @this: jdk.nashorn.api.scripting.NashornScriptEngineFactory;	r1 := @parameter0: java.lang.String;	r3 := @parameter1: java.lang.String;	r7 := @parameter2: java.lang.String[];	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(46);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3);	r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(40);	i0 = lengthof r7;	if i0 <= 0 goto i1 = 1;	i1 = 1;	if i1 >= i0 goto virtualinvoke r6.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41);	virtualinvoke r6.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41);	$r8 = virtualinvoke r6.<java.lang.StringBuilder: java.lang.String toString()>();	return $r8
;block_num 4