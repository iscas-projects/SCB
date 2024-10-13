(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1876 0)
(declare-sort var2243 0)
(declare-sort var2349 0)
(declare-sort var2790 0)
(declare-sort var2972 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun indexOf/-1037706067 ((s String) (c Int)) Int (str.indexof s (str.from_code c) 0))
(declare-fun getInvalidNames/72566763 (var1876) var2349)
(declare-fun var2349_put/1464166817 (var2349 var2790 var2790) var2790)
(declare-fun cast-from-String-to-var2790 (String) var2790)
(declare-fun var2972-init () var2972)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-157978614 (var2972 String) void)
(declare-const null-var1876 var1876)
(declare-const null-String String)
(declare-const var141 var1876) ; Statement: r1 := @this: org.apache.ibatis.javassist.compiler.MemberResolver 
(assert (not (= var141 null-var1876)))
(declare-const var965 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var965 null-String)))
(assert true)
(define-const var3325 Int (indexOf/-1037706067 var965 46)) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int indexOf(int)>(46) 
 ; Statement: if $i0 >= 0 goto $r2 = specialinvoke r1.<org.apache.ibatis.javassist.compiler.MemberResolver: java.util.Map getInvalidNames()>() 
(assert (>= var3325 0)) ; Cond: $i0 >= 0 
(assert true)
(define-const var3943 var2349 (getInvalidNames/72566763 var141)) ; Statement: $r2 = specialinvoke r1.<org.apache.ibatis.javassist.compiler.MemberResolver: java.util.Map getInvalidNames()>() 
;(assert (var2349_put/1464166817 var3943 (cast-from-String-to-var2790 var965) (cast-from-String-to-var2790 "<invalid>"))) ; Statement: interfaceinvoke $r2.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>(r0, "<invalid>") 

(declare-const var3943!1 var2349)
(declare-const var965!1 String)
(declare-const var519 String)
(define-const var108 var2972 var2972-init) ; Statement: $r3 = new org.apache.ibatis.javassist.compiler.CompileError 
(define-const var3129 String String-init) ; Statement: $r4 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3129)) ; Statement: specialinvoke $r4.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3129!1 String)
(assert (= var3129!1 ""))
(assert true)
(define-const var129 String (append/672562846 var3129!1 "no such class: ")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("no such class: ") 
(declare-const var3129!2 String)
(assert (= var3129!2 (str.++ var3129!1 "no such class: ")))
(assert true)
(define-const var2158 String (append/672562846 var129 var965!1)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0) 
(declare-const var129!1 String)
(assert (= var129!1 (str.++ var129 var965!1)))
(assert true)
(define-const var432 String (toString/-2075883882 var2158)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-157978614 var108 var432)) ; Statement: specialinvoke $r3.<org.apache.ibatis.javassist.compiler.CompileError: void <init>(java.lang.String)>($r7) 

(declare-const var108!1 var2972)
(declare-const var432!1 String)
 ; Statement: throw $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {indexOf/-1037706067=([java.lang.String, int], int), getInvalidNames/72566763=([org.apache.ibatis.javassist.compiler.MemberResolver], java.util.Map), var2349_put/1464166817=([java.util.Map, java.lang.Object, java.lang.Object], java.lang.Object), cast-from-String-to-var2790=([java.lang.String], java.lang.Object), var2972-init=([], org.apache.ibatis.javassist.compiler.CompileError), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-157978614=([org.apache.ibatis.javassist.compiler.CompileError, java.lang.String], void)}
; {var1876=org.apache.ibatis.javassist.compiler.MemberResolver, var141=r1, var965=r0, var2243=null_type, var3325=$i0, var2349=java.util.Map, var3943=$r2, var2790=java.lang.Object, var519="<invalid>", var2972=org.apache.ibatis.javassist.compiler.CompileError, var108=$r3, var3129=$r4, var129=$r5, var2158=$r6, var432=$r7}
; {org.apache.ibatis.javassist.compiler.MemberResolver=var1876, r1=var141, r0=var965, null_type=var2243, $i0=var3325, java.util.Map=var2349, $r2=var3943, java.lang.Object=var2790, "<invalid>"=var519, org.apache.ibatis.javassist.compiler.CompileError=var2972, $r3=var108, $r4=var3129, $r5=var129, $r6=var2158, $r7=var432}
;seq <java.lang.String: int indexOf(int)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: int indexOf(int)>": 1,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.ibatis.javassist.compiler.MemberResolver;	r0 := @parameter0: java.lang.String;	$i0 = virtualinvoke r0.<java.lang.String: int indexOf(int)>(46);	if $i0 >= 0 goto $r2 = specialinvoke r1.<org.apache.ibatis.javassist.compiler.MemberResolver: java.util.Map getInvalidNames()>();	$r2 = specialinvoke r1.<org.apache.ibatis.javassist.compiler.MemberResolver: java.util.Map getInvalidNames()>();	interfaceinvoke $r2.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>(r0, "<invalid>");	$r3 = new org.apache.ibatis.javassist.compiler.CompileError;	$r4 = new java.lang.StringBuilder;	specialinvoke $r4.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("no such class: ");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r3.<org.apache.ibatis.javassist.compiler.CompileError: void <init>(java.lang.String)>($r7);	throw $r3
;block_num 2