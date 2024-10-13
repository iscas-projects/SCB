(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2733 0)
(declare-sort var1445 0)
(declare-sort var1303 0)
(declare-sort var390 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun Int_toHexString/1865784998 (Int) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun Int_valueOf/-1371140006 (Int) Int)
(declare-fun var2733_get/1088891777 (var2733 var1303) var1303)
(declare-fun cast-from-Int-to-var1303 (Int) var1303)
(declare-fun cast-from-var1303-to-String (var1303) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun <init>/592609754 (String String) void)
(declare-const null-Int Int)
(declare-const var1445-HEX_PADDING var2733)
(declare-const null-String String)
(declare-const var1422 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var1422 null-Int)))
(define-const var1055 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1055)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1055!1 String)
(assert (= var1055!1 ""))
(define-const var2462 String (Int_toHexString/1865784998 var1422)) ; Statement: r1 = staticinvoke <java.lang.Integer: java.lang.String toHexString(int)>(i0) 
(assert true)
(define-const var2275 Int (length/-134980193 var2462)) ; Statement: $i1 = virtualinvoke r1.<java.lang.String: int length()>() 
(define-const var2647 Int (Int_valueOf/-1371140006 var2275)) ; Statement: r2 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>($i1) 
(define-const var2943 var2733 var1445-HEX_PADDING) ; Statement: $r3 = <org.apache.ibatis.ognl.OgnlRuntime: java.util.Map HEX_PADDING> 
(define-const var1706 var1303 (var2733_get/1088891777 var2943 (cast-from-Int-to-var1303 var2647))) ; Statement: $r4 = interfaceinvoke $r3.<java.util.Map: java.lang.Object get(java.lang.Object)>(r2) 
(define-const var1336 String (cast-from-var1303-to-String var1706)) ; Statement: $r5 = (java.lang.String) $r4 
(define-const var2851 String var1336) ; Statement: r10 = $r5 
 ; Statement: if $r5 != null goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r10) 
(assert (not (= var1336 null-String))) ; Cond: $r5 != null 
(assert true)
;(assert (append/672562846 var1055!1 var2851)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r10) 
(declare-const var1055!2 String)
(assert (= var1055!2 (str.++ var1055!1 var2851)))
(assert true)
;(assert (append/672562846 var1055!2 var2462)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var1055!3 String)
(assert (= var1055!3 (str.++ var1055!2 var2462)))
(define-const var274 String String-init) ; Statement: $r6 = new java.lang.String 
(assert true)
;(assert (<init>/592609754 var274 var1055!3)) ; Statement: specialinvoke $r6.<java.lang.String: void <init>(java.lang.StringBuilder)>($r0) 

(declare-const var274!1 String)
(declare-const var1055!4 String)
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), Int_toHexString/1865784998=([int], java.lang.String), length/-134980193=([java.lang.String], int), Int_valueOf/-1371140006=([int], java.lang.Integer), var2733_get/1088891777=([java.util.Map, java.lang.Object], java.lang.Object), cast-from-Int-to-var1303=([java.lang.Integer], java.lang.Object), cast-from-var1303-to-String=([java.lang.Object], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), <init>/592609754=([java.lang.String, java.lang.StringBuilder], void)}
; {var1422=i0, var1055=$r0, var2462=r1, var2275=$i1, var2647=r2, var2733=java.util.Map, var1445=org.apache.ibatis.ognl.OgnlRuntime, var2943=$r3, var1303=java.lang.Object, var1706=$r4, var1336=$r5, var2851=r10, var390=null_type, var274=$r6}
; {i0=var1422, $r0=var1055, r1=var2462, $i1=var2275, r2=var2647, java.util.Map=var2733, org.apache.ibatis.ognl.OgnlRuntime=var1445, $r3=var2943, java.lang.Object=var1303, $r4=var1706, $r5=var1336, r10=var2851, null_type=var390, $r6=var274}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.String: int length()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.String: void <init>(java.lang.StringBuilder)>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.String: int length()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.String: void <init>(java.lang.StringBuilder)>": 1}
;stmts i0 := @parameter0: int;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	r1 = staticinvoke <java.lang.Integer: java.lang.String toHexString(int)>(i0);	$i1 = virtualinvoke r1.<java.lang.String: int length()>();	r2 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>($i1);	$r3 = <org.apache.ibatis.ognl.OgnlRuntime: java.util.Map HEX_PADDING>;	$r4 = interfaceinvoke $r3.<java.util.Map: java.lang.Object get(java.lang.Object)>(r2);	$r5 = (java.lang.String) $r4;	r10 = $r5;	if $r5 != null goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r10);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r10);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r6 = new java.lang.String;	specialinvoke $r6.<java.lang.String: void <init>(java.lang.StringBuilder)>($r0);	return $r6
;block_num 2