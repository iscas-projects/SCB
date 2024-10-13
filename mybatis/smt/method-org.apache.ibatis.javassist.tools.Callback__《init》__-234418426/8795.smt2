(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var437 0)
(declare-sort var3982 0)
(declare-sort var2420 0)
(declare-sort var3216 0)
(declare-sort var779 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-279557996 (var2420) void)
(declare-fun cast-from-var437-to-var2420 (var437) var2420)
(declare-fun var3216_randomUUID/-2039575017 () var3216)
(declare-fun toString/1550724275 (var3216) String)
(declare-fun var779_put/1464166817 (var779 var2420 var2420) var2420)
(declare-fun cast-from-String-to-var2420 (String) var2420)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun sourceCode/476001248 (var437) String)
(declare-const null-var437 var437)
(declare-const null-String String)
(declare-const var437-callbacks var779)
(declare-const var767 var437) ; Statement: r0 := @this: org.apache.ibatis.javassist.tools.Callback 
(assert (not (= var767 null-var437)))
(declare-const var3684 String) ; Statement: r7 := @parameter0: java.lang.String 
(assert (not (= var3684 null-String)))
(assert true)
;(assert (<init>/-279557996 (cast-from-var437-to-var2420 var767))) ; Statement: specialinvoke r0.<java.lang.Object: void <init>()>() 

(declare-const var767!1 var437)
(define-const var2286 var3216 var3216_randomUUID/-2039575017) ; Statement: $r1 = staticinvoke <java.util.UUID: java.util.UUID randomUUID()>() 
(assert true)
(define-const var2166 String (toString/1550724275 var2286)) ; Statement: r2 = virtualinvoke $r1.<java.util.UUID: java.lang.String toString()>() 
(define-const var861 var779 var437-callbacks) ; Statement: $r3 = <org.apache.ibatis.javassist.tools.Callback: java.util.Map callbacks> 
;(assert (var779_put/1464166817 var861 (cast-from-String-to-var2420 var2166) (cast-from-var437-to-var2420 var767!1))) ; Statement: interfaceinvoke $r3.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>(r2, r0) 

(declare-const var861!1 var779)
(declare-const var2166!1 String)
(declare-const var767!2 var437)
(define-const var657 String String-init) ; Statement: $r4 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var657)) ; Statement: specialinvoke $r4.<java.lang.StringBuilder: void <init>()>() 
(declare-const var657!1 String)
(assert (= var657!1 ""))
(assert true)
(define-const var281 String (append/672562846 var657!1 "((javassist.tools.Callback) javassist.tools.Callback.callbacks.get(\u0022")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("((javassist.tools.Callback) javassist.tools.Callback.callbacks.get(\"") 
(declare-const var657!2 String)
(assert (= var657!2 (str.++ var657!1 "((javassist.tools.Callback) javassist.tools.Callback.callbacks.get(\u0022")))
(assert true)
(define-const var2996 String (append/672562846 var281 var2166!1)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var281!1 String)
(assert (= var281!1 (str.++ var281 var2166!1)))
(assert true)
(define-const var833 String (append/672562846 var2996 "\u0022)).result(new Object[]{")) ; Statement: $r8 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\")).result(new Object[]{") 
(declare-const var2996!1 String)
(assert (= var2996!1 (str.++ var2996 "\u0022)).result(new Object[]{")))
(assert true)
(define-const var3901 String (append/672562846 var833 var3684)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r7) 
(declare-const var833!1 String)
(assert (= var833!1 (str.++ var833 var3684)))
(assert true)
(define-const var2363 String (append/672562846 var3901 "});")) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("});") 
(declare-const var3901!1 String)
(assert (= var3901!1 (str.++ var3901 "});")))
(assert true)
(define-const var3069 String (toString/-2075883882 var2363)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
(declare-const var767!3 var437)
(assert (not (= var767!3 null-var437)))
(assert (= (sourceCode/476001248 var767!3) var3069)) ; Statement: r0.<org.apache.ibatis.javassist.tools.Callback: java.lang.String sourceCode> = $r11 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-279557996=([java.lang.Object], void), cast-from-var437-to-var2420=([org.apache.ibatis.javassist.tools.Callback], java.lang.Object), var3216_randomUUID/-2039575017=([], java.util.UUID), toString/1550724275=([java.util.UUID], java.lang.String), var779_put/1464166817=([java.util.Map, java.lang.Object, java.lang.Object], java.lang.Object), cast-from-String-to-var2420=([java.lang.String], java.lang.Object), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), sourceCode/476001248=([org.apache.ibatis.javassist.tools.Callback], java.lang.String)}
; {var437=org.apache.ibatis.javassist.tools.Callback, var767=r0, var3684=r7, var3982=null_type, var2420=java.lang.Object, var3216=java.util.UUID, var2286=$r1, var2166=r2, var779=java.util.Map, var861=$r3, var657=$r4, var281=$r5, var2996=$r6, var833=$r8, var3901=$r9, var2363=$r10, var3069=$r11}
; {org.apache.ibatis.javassist.tools.Callback=var437, r0=var767, r7=var3684, null_type=var3982, java.lang.Object=var2420, java.util.UUID=var3216, $r1=var2286, r2=var2166, java.util.Map=var779, $r3=var861, $r4=var657, $r5=var281, $r6=var2996, $r8=var833, $r9=var3901, $r10=var2363, $r11=var3069}
;seq <java.util.UUID: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 5,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.ibatis.javassist.tools.Callback;	r7 := @parameter0: java.lang.String;	specialinvoke r0.<java.lang.Object: void <init>()>();	$r1 = staticinvoke <java.util.UUID: java.util.UUID randomUUID()>();	r2 = virtualinvoke $r1.<java.util.UUID: java.lang.String toString()>();	$r3 = <org.apache.ibatis.javassist.tools.Callback: java.util.Map callbacks>;	interfaceinvoke $r3.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>(r2, r0);	$r4 = new java.lang.StringBuilder;	specialinvoke $r4.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("((javassist.tools.Callback) javassist.tools.Callback.callbacks.get(\"");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r8 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\")).result(new Object[]{");	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r7);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("});");	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	r0.<org.apache.ibatis.javassist.tools.Callback: java.lang.String sourceCode> = $r11;	return
;block_num 1