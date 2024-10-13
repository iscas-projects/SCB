(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3282 0)
(declare-sort var2465 0)
(declare-sort var2311 0)
(declare-sort var1594 0)
(declare-sort var2843 0)
(declare-sort var39 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun endsWith/985337093 ((s String) (suffix String)) Bool (str.suffixof suffix s))
(define-fun length/-134980193 ((s String)) Int (str.len s))
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(declare-fun var1594_parse/-1286663772 (String var2465) var1594)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun var39_of/-360792653 (var1594 var2843) var39)
(declare-const null-String String)
(declare-const var2311-DATE_TIME_FORMATTER_COOKIE_LOCAL var2465)
(declare-const null-var2465 var2465)
(declare-const var2311-SHANGHAI_ZONE_ID var2843)
(declare-const var21 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var21 null-String)))
(assert true)
(define-const var769 Bool (endsWith/985337093 var21 " CST")) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean endsWith(java.lang.String)>(" CST") 
 ; Statement: if $z0 == 0 goto r9 = <com.alibaba.fastjson2.util.DateUtils: java.time.format.DateTimeFormatter DATE_TIME_FORMATTER_COOKIE> 
(assert (not (= (ite var769 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var1055 var2465 var2311-DATE_TIME_FORMATTER_COOKIE_LOCAL) ; Statement: r8 = <com.alibaba.fastjson2.util.DateUtils: java.time.format.DateTimeFormatter DATE_TIME_FORMATTER_COOKIE_LOCAL> 
 ; Statement: if r8 != null goto $i0 = virtualinvoke r0.<java.lang.String: int length()>() 
(assert (not (= var1055 null-var2465))) ; Cond: r8 != null 
(assert true)
(define-const var685 Int (length/-134980193 var21)) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int length()>() 
(define-const var1343 Int (- var685 4)) ; Statement: $i1 = $i0 - 4 
(assert (not (and true (and (>= 0 0) (>= (str.len var21) var1343) (>= var1343 0)))))
(check-sat)
(get-model)
(get-unsat-core)
; {endsWith/985337093=([java.lang.String, java.lang.String], boolean), length/-134980193=([java.lang.String], int), substring/-1240304868=([java.lang.String, int, int], java.lang.String), var1594_parse/-1286663772=([java.lang.CharSequence, java.time.format.DateTimeFormatter], java.time.LocalDateTime), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), var39_of/-360792653=([java.time.LocalDateTime, java.time.ZoneId], java.time.ZonedDateTime)}
; {var21=r0, var3282=null_type, var769=$z0, var2465=java.time.format.DateTimeFormatter, var2311=com.alibaba.fastjson2.util.DateUtils, var1055=r8, var685=$i0, var1343=$i1, var1032=$r6, var1594=java.time.LocalDateTime, var403=$r7, var2843=java.time.ZoneId, var70=$r3, var39=java.time.ZonedDateTime, var3193=$r4}
; {r0=var21, null_type=var3282, $z0=var769, java.time.format.DateTimeFormatter=var2465, com.alibaba.fastjson2.util.DateUtils=var2311, r8=var1055, $i0=var685, $i1=var1343, $r6=var1032, java.time.LocalDateTime=var1594, $r7=var403, java.time.ZoneId=var2843, $r3=var70, java.time.ZonedDateTime=var39, $r4=var3193}
;seq <java.lang.String: boolean endsWith(java.lang.String)>;	<java.lang.String: int length()>;	<java.lang.String: java.lang.String substring(int,int)>
;cnt {"<java.lang.String: boolean endsWith(java.lang.String)>": 1,"<java.lang.String: int length()>": 1,"<java.lang.String: java.lang.String substring(int,int)>": 1}
;stmts r0 := @parameter0: java.lang.String;	$z0 = virtualinvoke r0.<java.lang.String: boolean endsWith(java.lang.String)>(" CST");	if $z0 == 0 goto r9 = <com.alibaba.fastjson2.util.DateUtils: java.time.format.DateTimeFormatter DATE_TIME_FORMATTER_COOKIE>;	r8 = <com.alibaba.fastjson2.util.DateUtils: java.time.format.DateTimeFormatter DATE_TIME_FORMATTER_COOKIE_LOCAL>;	if r8 != null goto $i0 = virtualinvoke r0.<java.lang.String: int length()>();	$i0 = virtualinvoke r0.<java.lang.String: int length()>();	$i1 = $i0 - 4;	$r6 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int,int)>(0, $i1);	$r7 = staticinvoke <java.time.LocalDateTime: java.time.LocalDateTime parse(java.lang.CharSequence,java.time.format.DateTimeFormatter)>($r6, r8);	$r3 = <com.alibaba.fastjson2.util.DateUtils: java.time.ZoneId SHANGHAI_ZONE_ID>;	$r4 = staticinvoke <java.time.ZonedDateTime: java.time.ZonedDateTime of(java.time.LocalDateTime,java.time.ZoneId)>($r7, $r3);	return $r4
;block_num 3