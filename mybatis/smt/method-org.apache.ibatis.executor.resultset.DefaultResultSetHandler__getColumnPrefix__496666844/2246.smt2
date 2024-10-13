(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var819 0)
(declare-sort var2376 0)
(declare-sort var1480 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getColumnPrefix/1661531745 (var1480) String)
(declare-fun length/-171891354 (String) Int)
(declare-const null-var819 var819)
(declare-const null-String String)
(declare-const null-var1480 var1480)
(declare-const var2294 var819) ; Statement: r7 := @this: org.apache.ibatis.executor.resultset.DefaultResultSetHandler 
(assert (not (= var2294 null-var819)))
(declare-const var3063 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var3063 null-String)))
(declare-const var2380 var1480) ; Statement: r2 := @parameter1: org.apache.ibatis.mapping.ResultMapping 
(assert (not (= var2380 null-var1480)))
(define-const var3651 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3651)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3651!1 String)
(assert (= var3651!1 ""))
 ; Statement: if r1 == null goto $r3 = virtualinvoke r2.<org.apache.ibatis.mapping.ResultMapping: java.lang.String getColumnPrefix()>() 
(assert (= var3063 null-String)) ; Cond: r1 == null 
(assert true)
(define-const var3148 String (getColumnPrefix/1661531745 var2380)) ; Statement: $r3 = virtualinvoke r2.<org.apache.ibatis.mapping.ResultMapping: java.lang.String getColumnPrefix()>() 
 ; Statement: if $r3 == null goto $i0 = virtualinvoke $r0.<java.lang.StringBuilder: int length()>() 
(assert (= var3148 null-String)) ; Cond: $r3 == null 
(assert true)
(define-const var228 Int (length/-171891354 var3651!1)) ; Statement: $i0 = virtualinvoke $r0.<java.lang.StringBuilder: int length()>() 
 ; Statement: if $i0 != 0 goto $r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (not (not (= var228 0)))) ; Negate: Cond: $i0 != 0  
(define-const var3072 String null-String) ; Statement: $r8 = null 
 ; Statement: goto [?= return $r8] 
(assert true) ; Non Conditional
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getColumnPrefix/1661531745=([org.apache.ibatis.mapping.ResultMapping], java.lang.String), length/-171891354=([java.lang.StringBuilder], int)}
; {var819=org.apache.ibatis.executor.resultset.DefaultResultSetHandler, var2294=r7, var3063=r1, var2376=null_type, var1480=org.apache.ibatis.mapping.ResultMapping, var2380=r2, var3651=$r0, var3148=$r3, var228=$i0, var3072=$r8}
; {org.apache.ibatis.executor.resultset.DefaultResultSetHandler=var819, r7=var2294, r1=var3063, null_type=var2376, org.apache.ibatis.mapping.ResultMapping=var1480, r2=var2380, $r0=var3651, $r3=var3148, $i0=var228, $r8=var3072}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: int length()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: int length()>": 1}
;stmts r7 := @this: org.apache.ibatis.executor.resultset.DefaultResultSetHandler;	r1 := @parameter0: java.lang.String;	r2 := @parameter1: org.apache.ibatis.mapping.ResultMapping;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	if r1 == null goto $r3 = virtualinvoke r2.<org.apache.ibatis.mapping.ResultMapping: java.lang.String getColumnPrefix()>();	$r3 = virtualinvoke r2.<org.apache.ibatis.mapping.ResultMapping: java.lang.String getColumnPrefix()>();	if $r3 == null goto $i0 = virtualinvoke $r0.<java.lang.StringBuilder: int length()>();	$i0 = virtualinvoke $r0.<java.lang.StringBuilder: int length()>();	if $i0 != 0 goto $r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	$r8 = null;	goto [?= return $r8];	return $r8
;block_num 5