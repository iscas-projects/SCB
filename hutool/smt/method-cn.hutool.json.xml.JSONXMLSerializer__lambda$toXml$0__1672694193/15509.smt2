(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2880 0)
(declare-sort var2423 0)
(declare-sort var1116 0)
(declare-sort var475 0)
(declare-sort var3648 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1116_isArray/-1773279845 (var2423) Bool)
(declare-fun var1116_contains/327682224 ((Array Int var2423) var2423) Bool)
(declare-fun cast-from-__Array__Int__String__-to-__Array__Int__var2423__ ((Array Int String)) (Array Int var2423))
(declare-fun cast-from-String-to-var2423 (String) var2423)
(declare-fun var475_isEmptyIfStr/-695482547 (var2423) Bool)
(declare-fun var3648_wrapWithTag/1365294420 (String String) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-const null-__Array__Int__String__ (Array Int String))
(declare-const null-String String)
(declare-const null-var2423 var2423)
(declare-const var2270 (Array Int String)) ; Statement: r0 := @parameter0: java.lang.String[] 
(assert (not (= var2270 null-__Array__Int__String__)))
(declare-const var3863 String) ; Statement: r2 := @parameter1: java.lang.StringBuilder 
(assert (not (= var3863 null-String)))
(declare-const var1842 String) ; Statement: r1 := @parameter2: java.lang.String 
(assert (not (= var1842 null-String)))
(declare-const var207 var2423) ; Statement: r16 := @parameter3: java.lang.Object 
(assert (not (= var207 null-var2423)))
(define-const var2672 Bool (var1116_isArray/-1773279845 var207)) ; Statement: $z0 = staticinvoke <cn.hutool.core.util.ArrayUtil: boolean isArray(java.lang.Object)>(r16) 
 ; Statement: if $z0 == 0 goto $z1 = staticinvoke <cn.hutool.core.util.ArrayUtil: boolean contains(java.lang.Object[],java.lang.Object)>(r0, r1) 
(assert (= (ite var2672 1 0) 0)) ; Cond: $z0 == 0 
(define-const var2498 Bool (var1116_contains/327682224 (cast-from-__Array__Int__String__-to-__Array__Int__var2423__ var2270) (cast-from-String-to-var2423 var1842))) ; Statement: $z1 = staticinvoke <cn.hutool.core.util.ArrayUtil: boolean contains(java.lang.Object[],java.lang.Object)>(r0, r1) 
 ; Statement: if $z1 == 0 goto $z2 = staticinvoke <cn.hutool.core.util.StrUtil: boolean isEmptyIfStr(java.lang.Object)>(r16) 
(assert (= (ite var2498 1 0) 0)) ; Cond: $z1 == 0 
(define-const var3940 Bool (var475_isEmptyIfStr/-695482547 var207)) ; Statement: $z2 = staticinvoke <cn.hutool.core.util.StrUtil: boolean isEmptyIfStr(java.lang.Object)>(r16) 
 ; Statement: if $z2 == 0 goto $z3 = r16 instanceof cn.hutool.json.JSONArray 
(assert (not (= (ite var3940 1 0) 0))) ; Negate: Cond: $z2 == 0  
(define-const var2966 String (var3648_wrapWithTag/1365294420 null-String var1842)) ; Statement: $r8 = staticinvoke <cn.hutool.json.xml.JSONXMLSerializer: java.lang.String wrapWithTag(java.lang.String,java.lang.String)>(null, r1) 
(assert true)
;(assert (append/672562846 var3863 var2966)) ; Statement: virtualinvoke r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8) 
(declare-const var3863!1 String)
(assert (= var3863!1 (str.++ var3863 var2966)))
 ; Statement: goto [?= return] 
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var1116_isArray/-1773279845=([java.lang.Object], boolean), var1116_contains/327682224=([java.lang.Object[], java.lang.Object], boolean), cast-from-__Array__Int__String__-to-__Array__Int__var2423__=([java.lang.String[]], java.lang.Object[]), cast-from-String-to-var2423=([java.lang.String], java.lang.Object), var475_isEmptyIfStr/-695482547=([java.lang.Object], boolean), var3648_wrapWithTag/1365294420=([java.lang.String, java.lang.String], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder)}
; {var2270=r0, var3863=r2, var1842=r1, var2880=null_type, var2423=java.lang.Object, var207=r16, var1116=cn.hutool.core.util.ArrayUtil, var2672=$z0, var2498=$z1, var475=cn.hutool.core.util.StrUtil, var3940=$z2, var3648=cn.hutool.json.xml.JSONXMLSerializer, var2966=$r8}
; {r0=var2270, r2=var3863, r1=var1842, null_type=var2880, java.lang.Object=var2423, r16=var207, cn.hutool.core.util.ArrayUtil=var1116, $z0=var2672, $z1=var2498, cn.hutool.core.util.StrUtil=var475, $z2=var3940, cn.hutool.json.xml.JSONXMLSerializer=var3648, $r8=var2966}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1}
;stmts r0 := @parameter0: java.lang.String[];	r2 := @parameter1: java.lang.StringBuilder;	r1 := @parameter2: java.lang.String;	r16 := @parameter3: java.lang.Object;	$z0 = staticinvoke <cn.hutool.core.util.ArrayUtil: boolean isArray(java.lang.Object)>(r16);	if $z0 == 0 goto $z1 = staticinvoke <cn.hutool.core.util.ArrayUtil: boolean contains(java.lang.Object[],java.lang.Object)>(r0, r1);	$z1 = staticinvoke <cn.hutool.core.util.ArrayUtil: boolean contains(java.lang.Object[],java.lang.Object)>(r0, r1);	if $z1 == 0 goto $z2 = staticinvoke <cn.hutool.core.util.StrUtil: boolean isEmptyIfStr(java.lang.Object)>(r16);	$z2 = staticinvoke <cn.hutool.core.util.StrUtil: boolean isEmptyIfStr(java.lang.Object)>(r16);	if $z2 == 0 goto $z3 = r16 instanceof cn.hutool.json.JSONArray;	$r8 = staticinvoke <cn.hutool.json.xml.JSONXMLSerializer: java.lang.String wrapWithTag(java.lang.String,java.lang.String)>(null, r1);	virtualinvoke r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8);	goto [?= return];	return
;block_num 5