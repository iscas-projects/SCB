(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3134 0)
(declare-sort var703 0)
(declare-sort var3185 0)
(declare-sort var417 0)
(declare-sort var683 0)
(declare-sort var3990 0)
(declare-sort var3383 0)
(declare-sort var2792 0)
(declare-sort var2333 0)
(declare-sort var450 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var417-init () var417)
(declare-fun <init>/451842749 (var417) void)
(declare-fun var683-init () var683)
(declare-fun <init>/-325640736 (var683) void)
(declare-fun toUpperCase/398655892 (String var3990) String)
(declare-fun getMappedColumns/1839632388 (var703) var3383)
(declare-fun prependPrefixes/777192886 (var3134 var3383 String) var3383)
(declare-fun columnNames/-1352890640 (var3134) var2792)
(declare-fun var2792_iterator/-912451715 (var2792) Iterator)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(declare-fun mappedColumnNamesMap/-1352890640 (var3134) var2333)
(declare-fun getMapKey/-1310744135 (var3134 var703 String) String)
(declare-fun var2333_put/1464166817 (var2333 var450 var450) var450)
(declare-fun cast-from-String-to-var450 (String) var450)
(declare-fun cast-from-var417-to-var450 (var417) var450)
(declare-fun unMappedColumnNamesMap/-1352890640 (var3134) var2333)
(declare-fun cast-from-var683-to-var450 (var683) var450)
(declare-const null-var3134 var3134)
(declare-const null-var703 var703)
(declare-const null-String String)
(declare-const var3990-ENGLISH var3990)
(declare-const var490 var3134) ; Statement: r4 := @this: org.apache.ibatis.executor.resultset.ResultSetWrapper 
(assert (not (= var490 null-var3134)))
(declare-const var993 var703) ; Statement: r5 := @parameter0: org.apache.ibatis.mapping.ResultMap 
(assert (not (= var993 null-var703)))
(declare-const var449 String) ; Statement: r2 := @parameter1: java.lang.String 
(assert (not (= var449 null-String)))
(define-const var3565 var417 var417-init) ; Statement: $r0 = new java.util.HashSet 
(assert true)
;(assert (<init>/451842749 var3565)) ; Statement: specialinvoke $r0.<java.util.HashSet: void <init>()>() 

(declare-const var3565!1 var417)
(define-const var2276 var683 var683-init) ; Statement: $r1 = new java.util.ArrayList 
(assert true)
;(assert (<init>/-325640736 var2276)) ; Statement: specialinvoke $r1.<java.util.ArrayList: void <init>()>() 

(declare-const var2276!1 var683)
 ; Statement: if r2 != null goto $r3 = <java.util.Locale: java.util.Locale ENGLISH> 
(assert (not (= var449 null-String))) ; Cond: r2 != null 
(define-const var658 var3990 var3990-ENGLISH) ; Statement: $r3 = <java.util.Locale: java.util.Locale ENGLISH> 
(assert true)
(define-const var3239 String (toUpperCase/398655892 var449 var658)) ; Statement: $r18 = virtualinvoke r2.<java.lang.String: java.lang.String toUpperCase(java.util.Locale)>($r3) 
(assert true) ; Non Conditional
(assert true)
(define-const var1421 var3383 (getMappedColumns/1839632388 var993)) ; Statement: $r6 = virtualinvoke r5.<org.apache.ibatis.mapping.ResultMap: java.util.Set getMappedColumns()>() 
(assert true)
(define-const var765 var3383 (prependPrefixes/777192886 var490 var1421 var3239)) ; Statement: $r16 = specialinvoke r4.<org.apache.ibatis.executor.resultset.ResultSetWrapper: java.util.Set prependPrefixes(java.util.Set,java.lang.String)>($r6, $r18) 
(define-const var371 var2792 (columnNames/-1352890640 var490)) ; Statement: $r7 = r4.<org.apache.ibatis.executor.resultset.ResultSetWrapper: java.util.List columnNames> 
(define-const var3756 Iterator (var2792_iterator/-912451715 var371)) ; Statement: $r17 = interfaceinvoke $r7.<java.util.List: java.util.Iterator iterator()>() 
(assert true) ; Non Conditional
(define-const var1171 Bool (Iterator_hasNext/-1669924200 var3756)) ; Statement: $z1 = interfaceinvoke $r17.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z1 == 0 goto $r8 = r4.<org.apache.ibatis.executor.resultset.ResultSetWrapper: java.util.Map mappedColumnNamesMap> 
(assert (= (ite var1171 1 0) 0)) ; Cond: $z1 == 0 
(define-const var2923 var2333 (mappedColumnNamesMap/-1352890640 var490)) ; Statement: $r8 = r4.<org.apache.ibatis.executor.resultset.ResultSetWrapper: java.util.Map mappedColumnNamesMap> 
(assert true)
(define-const var3460 String (getMapKey/-1310744135 var490 var993 var449)) ; Statement: $r9 = specialinvoke r4.<org.apache.ibatis.executor.resultset.ResultSetWrapper: java.lang.String getMapKey(org.apache.ibatis.mapping.ResultMap,java.lang.String)>(r5, r2) 
;(assert (var2333_put/1464166817 var2923 (cast-from-String-to-var450 var3460) (cast-from-var417-to-var450 var3565!1))) ; Statement: interfaceinvoke $r8.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>($r9, $r0) 

(declare-const var2923!1 var2333)
(declare-const var3460!1 String)
(declare-const var3565!2 var417)
(define-const var3233 var2333 (unMappedColumnNamesMap/-1352890640 var490)) ; Statement: $r10 = r4.<org.apache.ibatis.executor.resultset.ResultSetWrapper: java.util.Map unMappedColumnNamesMap> 
(assert true)
(define-const var3725 String (getMapKey/-1310744135 var490 var993 var449)) ; Statement: $r11 = specialinvoke r4.<org.apache.ibatis.executor.resultset.ResultSetWrapper: java.lang.String getMapKey(org.apache.ibatis.mapping.ResultMap,java.lang.String)>(r5, r2) 
;(assert (var2333_put/1464166817 var3233 (cast-from-String-to-var450 var3725) (cast-from-var683-to-var450 var2276!1))) ; Statement: interfaceinvoke $r10.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>($r11, $r1) 

(declare-const var3233!1 var2333)
(declare-const var3725!1 String)
(declare-const var2276!2 var683)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var417-init=([], java.util.HashSet), <init>/451842749=([java.util.HashSet], void), var683-init=([], java.util.ArrayList), <init>/-325640736=([java.util.ArrayList], void), toUpperCase/398655892=([java.lang.String, java.util.Locale], java.lang.String), getMappedColumns/1839632388=([org.apache.ibatis.mapping.ResultMap], java.util.Set), prependPrefixes/777192886=([org.apache.ibatis.executor.resultset.ResultSetWrapper, java.util.Set, java.lang.String], java.util.Set), columnNames/-1352890640=([org.apache.ibatis.executor.resultset.ResultSetWrapper], java.util.List), var2792_iterator/-912451715=([java.util.List], java.util.Iterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), mappedColumnNamesMap/-1352890640=([org.apache.ibatis.executor.resultset.ResultSetWrapper], java.util.Map), getMapKey/-1310744135=([org.apache.ibatis.executor.resultset.ResultSetWrapper, org.apache.ibatis.mapping.ResultMap, java.lang.String], java.lang.String), var2333_put/1464166817=([java.util.Map, java.lang.Object, java.lang.Object], java.lang.Object), cast-from-String-to-var450=([java.lang.String], java.lang.Object), cast-from-var417-to-var450=([java.util.HashSet], java.lang.Object), unMappedColumnNamesMap/-1352890640=([org.apache.ibatis.executor.resultset.ResultSetWrapper], java.util.Map), cast-from-var683-to-var450=([java.util.ArrayList], java.lang.Object)}
; {var3134=org.apache.ibatis.executor.resultset.ResultSetWrapper, var490=r4, var703=org.apache.ibatis.mapping.ResultMap, var993=r5, var449=r2, var3185=null_type, var417=java.util.HashSet, var3565=$r0, var683=java.util.ArrayList, var2276=$r1, var3990=java.util.Locale, var658=$r3, var3239=$r18, var3383=java.util.Set, var1421=$r6, var765=$r16, var2792=java.util.List, var371=$r7, var3756=$r17, var1171=$z1, var2333=java.util.Map, var2923=$r8, var3460=$r9, var450=java.lang.Object, var3233=$r10, var3725=$r11}
; {org.apache.ibatis.executor.resultset.ResultSetWrapper=var3134, r4=var490, org.apache.ibatis.mapping.ResultMap=var703, r5=var993, r2=var449, null_type=var3185, java.util.HashSet=var417, $r0=var3565, java.util.ArrayList=var683, $r1=var2276, java.util.Locale=var3990, $r3=var658, $r18=var3239, java.util.Set=var3383, $r6=var1421, $r16=var765, java.util.List=var2792, $r7=var371, $r17=var3756, $z1=var1171, java.util.Map=var2333, $r8=var2923, $r9=var3460, java.lang.Object=var450, $r10=var3233, $r11=var3725}
;seq <java.lang.String: java.lang.String toUpperCase(java.util.Locale)>
;cnt {"<java.lang.String: java.lang.String toUpperCase(java.util.Locale)>": 1}
;stmts r4 := @this: org.apache.ibatis.executor.resultset.ResultSetWrapper;	r5 := @parameter0: org.apache.ibatis.mapping.ResultMap;	r2 := @parameter1: java.lang.String;	$r0 = new java.util.HashSet;	specialinvoke $r0.<java.util.HashSet: void <init>()>();	$r1 = new java.util.ArrayList;	specialinvoke $r1.<java.util.ArrayList: void <init>()>();	if r2 != null goto $r3 = <java.util.Locale: java.util.Locale ENGLISH>;	$r3 = <java.util.Locale: java.util.Locale ENGLISH>;	$r18 = virtualinvoke r2.<java.lang.String: java.lang.String toUpperCase(java.util.Locale)>($r3);	$r6 = virtualinvoke r5.<org.apache.ibatis.mapping.ResultMap: java.util.Set getMappedColumns()>();	$r16 = specialinvoke r4.<org.apache.ibatis.executor.resultset.ResultSetWrapper: java.util.Set prependPrefixes(java.util.Set,java.lang.String)>($r6, $r18);	$r7 = r4.<org.apache.ibatis.executor.resultset.ResultSetWrapper: java.util.List columnNames>;	$r17 = interfaceinvoke $r7.<java.util.List: java.util.Iterator iterator()>();	$z1 = interfaceinvoke $r17.<java.util.Iterator: boolean hasNext()>();	if $z1 == 0 goto $r8 = r4.<org.apache.ibatis.executor.resultset.ResultSetWrapper: java.util.Map mappedColumnNamesMap>;	$r8 = r4.<org.apache.ibatis.executor.resultset.ResultSetWrapper: java.util.Map mappedColumnNamesMap>;	$r9 = specialinvoke r4.<org.apache.ibatis.executor.resultset.ResultSetWrapper: java.lang.String getMapKey(org.apache.ibatis.mapping.ResultMap,java.lang.String)>(r5, r2);	interfaceinvoke $r8.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>($r9, $r0);	$r10 = r4.<org.apache.ibatis.executor.resultset.ResultSetWrapper: java.util.Map unMappedColumnNamesMap>;	$r11 = specialinvoke r4.<org.apache.ibatis.executor.resultset.ResultSetWrapper: java.lang.String getMapKey(org.apache.ibatis.mapping.ResultMap,java.lang.String)>(r5, r2);	interfaceinvoke $r10.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>($r11, $r1);	return
;block_num 5