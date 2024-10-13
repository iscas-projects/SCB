(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var76 0)
(declare-sort var2302 0)
(declare-sort var2317 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun message/903370688 (var76) String)
(declare-fun resource/903370688 (var76) String)
(declare-fun object/903370688 (var76) String)
(declare-fun activity/903370688 (var76) String)
(declare-fun sql/903370688 (var76) String)
(declare-fun cause/903370688 (var76) var2317)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var76 var76)
(declare-const null-String String)
(declare-const null-var2317 var2317)
(declare-const var3456 var76) ; Statement: r1 := @this: org.apache.ibatis.executor.ErrorContext 
(assert (not (= var3456 null-var76)))
(define-const var2114 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2114)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2114!1 String)
(assert (= var2114!1 ""))
(define-const var1459 String (message/903370688 var3456)) ; Statement: $r2 = r1.<org.apache.ibatis.executor.ErrorContext: java.lang.String message> 
 ; Statement: if $r2 == null goto $r3 = r1.<org.apache.ibatis.executor.ErrorContext: java.lang.String resource> 
(assert (= var1459 null-String)) ; Cond: $r2 == null 
(define-const var3280 String (resource/903370688 var3456)) ; Statement: $r3 = r1.<org.apache.ibatis.executor.ErrorContext: java.lang.String resource> 
 ; Statement: if $r3 == null goto $r4 = r1.<org.apache.ibatis.executor.ErrorContext: java.lang.String object> 
(assert (= var3280 null-String)) ; Cond: $r3 == null 
(define-const var2476 String (object/903370688 var3456)) ; Statement: $r4 = r1.<org.apache.ibatis.executor.ErrorContext: java.lang.String object> 
 ; Statement: if $r4 == null goto $r5 = r1.<org.apache.ibatis.executor.ErrorContext: java.lang.String activity> 
(assert (= var2476 null-String)) ; Cond: $r4 == null 
(define-const var1402 String (activity/903370688 var3456)) ; Statement: $r5 = r1.<org.apache.ibatis.executor.ErrorContext: java.lang.String activity> 
 ; Statement: if $r5 == null goto $r6 = r1.<org.apache.ibatis.executor.ErrorContext: java.lang.String sql> 
(assert (= var1402 null-String)) ; Cond: $r5 == null 
(define-const var1765 String (sql/903370688 var3456)) ; Statement: $r6 = r1.<org.apache.ibatis.executor.ErrorContext: java.lang.String sql> 
 ; Statement: if $r6 == null goto $r7 = r1.<org.apache.ibatis.executor.ErrorContext: java.lang.Throwable cause> 
(assert (= var1765 null-String)) ; Cond: $r6 == null 
(define-const var1609 var2317 (cause/903370688 var3456)) ; Statement: $r7 = r1.<org.apache.ibatis.executor.ErrorContext: java.lang.Throwable cause> 
 ; Statement: if $r7 == null goto $r8 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (= var1609 null-var2317)) ; Cond: $r7 == null 
(assert true)
(define-const var825 String (toString/-2075883882 var2114!1)) ; Statement: $r8 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), message/903370688=([org.apache.ibatis.executor.ErrorContext], java.lang.String), resource/903370688=([org.apache.ibatis.executor.ErrorContext], java.lang.String), object/903370688=([org.apache.ibatis.executor.ErrorContext], java.lang.String), activity/903370688=([org.apache.ibatis.executor.ErrorContext], java.lang.String), sql/903370688=([org.apache.ibatis.executor.ErrorContext], java.lang.String), cause/903370688=([org.apache.ibatis.executor.ErrorContext], java.lang.Throwable), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var76=org.apache.ibatis.executor.ErrorContext, var3456=r1, var2114=$r0, var1459=$r2, var2302=null_type, var3280=$r3, var2476=$r4, var1402=$r5, var1765=$r6, var2317=java.lang.Throwable, var1609=$r7, var825=$r8}
; {org.apache.ibatis.executor.ErrorContext=var76, r1=var3456, $r0=var2114, $r2=var1459, null_type=var2302, $r3=var3280, $r4=var2476, $r5=var1402, $r6=var1765, java.lang.Throwable=var2317, $r7=var1609, $r8=var825}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.ibatis.executor.ErrorContext;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = r1.<org.apache.ibatis.executor.ErrorContext: java.lang.String message>;	if $r2 == null goto $r3 = r1.<org.apache.ibatis.executor.ErrorContext: java.lang.String resource>;	$r3 = r1.<org.apache.ibatis.executor.ErrorContext: java.lang.String resource>;	if $r3 == null goto $r4 = r1.<org.apache.ibatis.executor.ErrorContext: java.lang.String object>;	$r4 = r1.<org.apache.ibatis.executor.ErrorContext: java.lang.String object>;	if $r4 == null goto $r5 = r1.<org.apache.ibatis.executor.ErrorContext: java.lang.String activity>;	$r5 = r1.<org.apache.ibatis.executor.ErrorContext: java.lang.String activity>;	if $r5 == null goto $r6 = r1.<org.apache.ibatis.executor.ErrorContext: java.lang.String sql>;	$r6 = r1.<org.apache.ibatis.executor.ErrorContext: java.lang.String sql>;	if $r6 == null goto $r7 = r1.<org.apache.ibatis.executor.ErrorContext: java.lang.Throwable cause>;	$r7 = r1.<org.apache.ibatis.executor.ErrorContext: java.lang.Throwable cause>;	if $r7 == null goto $r8 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	$r8 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r8
;block_num 7