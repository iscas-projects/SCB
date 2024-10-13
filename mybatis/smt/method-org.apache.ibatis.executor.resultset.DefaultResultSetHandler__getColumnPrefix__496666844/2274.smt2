(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3342 0)
(declare-sort var2361 0)
(declare-sort var321 0)
(declare-sort var1473 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getColumnPrefix/1661531745 (var321) String)
(declare-fun length/-171891354 (String) Int)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun toUpperCase/398655892 (String var1473) String)
(declare-const null-var3342 var3342)
(declare-const null-String String)
(declare-const null-var321 var321)
(declare-const var1473-ENGLISH var1473)
(declare-const var2912 var3342) ; Statement: r7 := @this: org.apache.ibatis.executor.resultset.DefaultResultSetHandler 
(assert (not (= var2912 null-var3342)))
(declare-const var3884 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var3884 null-String)))
(declare-const var2968 var321) ; Statement: r2 := @parameter1: org.apache.ibatis.mapping.ResultMapping 
(assert (not (= var2968 null-var321)))
(define-const var2944 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2944)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2944!1 String)
(assert (= var2944!1 ""))
 ; Statement: if r1 == null goto $r3 = virtualinvoke r2.<org.apache.ibatis.mapping.ResultMapping: java.lang.String getColumnPrefix()>() 
(assert (= var3884 null-String)) ; Cond: r1 == null 
(assert true)
(define-const var619 String (getColumnPrefix/1661531745 var2968)) ; Statement: $r3 = virtualinvoke r2.<org.apache.ibatis.mapping.ResultMapping: java.lang.String getColumnPrefix()>() 
 ; Statement: if $r3 == null goto $i0 = virtualinvoke $r0.<java.lang.StringBuilder: int length()>() 
(assert (= var619 null-String)) ; Cond: $r3 == null 
(assert true)
(define-const var1187 Int (length/-171891354 var2944!1)) ; Statement: $i0 = virtualinvoke $r0.<java.lang.StringBuilder: int length()>() 
 ; Statement: if $i0 != 0 goto $r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (not (= var1187 0))) ; Cond: $i0 != 0 
(assert true)
(define-const var2604 String (toString/-2075883882 var2944!1)) ; Statement: $r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var3232 var1473 var1473-ENGLISH) ; Statement: $r4 = <java.util.Locale: java.util.Locale ENGLISH> 
(assert true)
(define-const var1988 String (toUpperCase/398655892 var2604 var3232)) ; Statement: $r8 = virtualinvoke $r5.<java.lang.String: java.lang.String toUpperCase(java.util.Locale)>($r4) 
(assert true) ; Non Conditional
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getColumnPrefix/1661531745=([org.apache.ibatis.mapping.ResultMapping], java.lang.String), length/-171891354=([java.lang.StringBuilder], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), toUpperCase/398655892=([java.lang.String, java.util.Locale], java.lang.String)}
; {var3342=org.apache.ibatis.executor.resultset.DefaultResultSetHandler, var2912=r7, var3884=r1, var2361=null_type, var321=org.apache.ibatis.mapping.ResultMapping, var2968=r2, var2944=$r0, var619=$r3, var1187=$i0, var2604=$r5, var1473=java.util.Locale, var3232=$r4, var1988=$r8}
; {org.apache.ibatis.executor.resultset.DefaultResultSetHandler=var3342, r7=var2912, r1=var3884, null_type=var2361, org.apache.ibatis.mapping.ResultMapping=var321, r2=var2968, $r0=var2944, $r3=var619, $i0=var1187, $r5=var2604, java.util.Locale=var1473, $r4=var3232, $r8=var1988}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: int length()>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.String: java.lang.String toUpperCase(java.util.Locale)>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: int length()>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1,"<java.lang.String: java.lang.String toUpperCase(java.util.Locale)>": 1}
;stmts r7 := @this: org.apache.ibatis.executor.resultset.DefaultResultSetHandler;	r1 := @parameter0: java.lang.String;	r2 := @parameter1: org.apache.ibatis.mapping.ResultMapping;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	if r1 == null goto $r3 = virtualinvoke r2.<org.apache.ibatis.mapping.ResultMapping: java.lang.String getColumnPrefix()>();	$r3 = virtualinvoke r2.<org.apache.ibatis.mapping.ResultMapping: java.lang.String getColumnPrefix()>();	if $r3 == null goto $i0 = virtualinvoke $r0.<java.lang.StringBuilder: int length()>();	$i0 = virtualinvoke $r0.<java.lang.StringBuilder: int length()>();	if $i0 != 0 goto $r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	$r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	$r4 = <java.util.Locale: java.util.Locale ENGLISH>;	$r8 = virtualinvoke $r5.<java.lang.String: java.lang.String toUpperCase(java.util.Locale)>($r4);	return $r8
;block_num 5