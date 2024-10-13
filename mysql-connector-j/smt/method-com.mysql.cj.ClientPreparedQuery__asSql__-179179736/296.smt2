(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var321 0)
(declare-sort var3178 0)
(declare-sort var1328 0)
(declare-sort var1926 0)
(declare-sort var1770 0)
(declare-sort var316 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun batchCommandIndex/508865650 (var321) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun queryInfo/508865650 (var321) var1328)
(declare-fun getStaticSqlParts/-1985930351 (var1328) (Array Int (Array Int Int)))
(declare-fun parameterCount/508865650 (var321) Int)
(declare-fun charEncoding/-459319496 (var1926) String)
(declare-fun cast-from-var321-to-var1926 (var321) var1926)
(declare-fun var316_toString/-823789041 ((Array Int Int) String) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var321 var321)
(declare-const null-var3178 var3178)
(declare-const null-String String)
(declare-const var440 var321) ; Statement: r1 := @this: com.mysql.cj.ClientPreparedQuery 
(assert (not (= var440 null-var321)))
(define-const var116 String String-init) ; Statement: $r27 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var116)) ; Statement: specialinvoke $r27.<java.lang.StringBuilder: void <init>()>() 
(declare-const var116!1 String)
(assert (= var116!1 ""))
(define-const var2532 var3178 null-var3178) ; Statement: r22 = null 
(define-const var544 Int (batchCommandIndex/508865650 var440)) ; Statement: $i0 = r1.<com.mysql.cj.ClientPreparedQuery: int batchCommandIndex> 
(define-const var2552 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i8 = (int) -1 
 ; Statement: if $i0 == $i8 goto $r2 = r1.<com.mysql.cj.ClientPreparedQuery: com.mysql.cj.QueryInfo queryInfo> 
(assert (= var544 var2552)) ; Cond: $i0 == $i8 
(define-const var2431 var1328 (queryInfo/508865650 var440)) ; Statement: $r2 = r1.<com.mysql.cj.ClientPreparedQuery: com.mysql.cj.QueryInfo queryInfo> 
(assert true)
(define-const var241 (Array Int (Array Int Int)) (getStaticSqlParts/-1985930351 var2431)) ; Statement: $r21 = virtualinvoke $r2.<com.mysql.cj.QueryInfo: byte[][] getStaticSqlParts()>() 
(define-const var126 Int 0) ; Statement: i5 = 0 
(assert true) ; Non Conditional
(define-const var2448 Int (parameterCount/508865650 var440)) ; Statement: $i6 = r1.<com.mysql.cj.ClientPreparedQuery: int parameterCount> 
 ; Statement: if i5 >= $i6 goto $r3 = r1.<com.mysql.cj.ClientPreparedQuery: java.lang.String charEncoding> 
(assert (>= var126 var2448)) ; Cond: i5 >= $i6 
(define-const var3677 String (charEncoding/-459319496 (cast-from-var321-to-var1926 var440))) ; Statement: $r3 = r1.<com.mysql.cj.ClientPreparedQuery: java.lang.String charEncoding> 
 ; Statement: if $r3 == null goto $i1 = r1.<com.mysql.cj.ClientPreparedQuery: int parameterCount> 
(assert (not (= var3677 null-String))) ; Negate: Cond: $r3 == null  
(define-const var2757 Int (parameterCount/508865650 var440)) ; Statement: $i2 = r1.<com.mysql.cj.ClientPreparedQuery: int parameterCount> 
(define-const var726 (Array Int Int) (select var241 var2757)) ; Statement: $r7 = $r21[$i2] 
(define-const var3131 String (charEncoding/-459319496 (cast-from-var321-to-var1926 var440))) ; Statement: $r6 = r1.<com.mysql.cj.ClientPreparedQuery: java.lang.String charEncoding> 
(define-const var167 String (var316_toString/-823789041 var726 var3131)) ; Statement: $r26 = staticinvoke <com.mysql.cj.util.StringUtils: java.lang.String toString(byte[],java.lang.String)>($r7, $r6) 
 ; Statement: goto [?= virtualinvoke $r27.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r26)] 
(assert true) ; Non Conditional
(assert true)
;(assert (append/672562846 var116!1 var167)) ; Statement: virtualinvoke $r27.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r26) 
(declare-const var116!2 String)
(assert (= var116!2 (str.++ var116!1 var167)))
(assert true)
(define-const var2850 String (toString/-2075883882 var116!2)) ; Statement: $r5 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), batchCommandIndex/508865650=([com.mysql.cj.ClientPreparedQuery], int), cast-from-Int-to-Int=([int], int), queryInfo/508865650=([com.mysql.cj.ClientPreparedQuery], com.mysql.cj.QueryInfo), getStaticSqlParts/-1985930351=([com.mysql.cj.QueryInfo], byte[][]), parameterCount/508865650=([com.mysql.cj.ClientPreparedQuery], int), charEncoding/-459319496=([com.mysql.cj.AbstractQuery], java.lang.String), cast-from-var321-to-var1926=([com.mysql.cj.ClientPreparedQuery], com.mysql.cj.AbstractQuery), var316_toString/-823789041=([byte[], java.lang.String], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var321=com.mysql.cj.ClientPreparedQuery, var440=r1, var116=$r27, var3178=java.lang.Object, var2532=r22, var544=$i0, var2552=$i8, var1328=com.mysql.cj.QueryInfo, var2431=$r2, var241=$r21, var126=i5, var2448=$i6, var1926=com.mysql.cj.AbstractQuery, var3677=$r3, var1770=null_type, var2757=$i2, var726=$r7, var3131=$r6, var316=com.mysql.cj.util.StringUtils, var167=$r26, var2850=$r5}
; {com.mysql.cj.ClientPreparedQuery=var321, r1=var440, $r27=var116, java.lang.Object=var3178, r22=var2532, $i0=var544, $i8=var2552, com.mysql.cj.QueryInfo=var1328, $r2=var2431, $r21=var241, i5=var126, $i6=var2448, com.mysql.cj.AbstractQuery=var1926, $r3=var3677, null_type=var1770, $i2=var2757, $r7=var726, $r6=var3131, com.mysql.cj.util.StringUtils=var316, $r26=var167, $r5=var2850}
;seq <java.lang.StringBuilder: void <init>()>;	<com.mysql.cj.util.StringUtils: java.lang.String toString(byte[],java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.mysql.cj.ClientPreparedQuery;	$r27 = new java.lang.StringBuilder;	specialinvoke $r27.<java.lang.StringBuilder: void <init>()>();	r22 = null;	$i0 = r1.<com.mysql.cj.ClientPreparedQuery: int batchCommandIndex>;	$i8 = (int) -1;	if $i0 == $i8 goto $r2 = r1.<com.mysql.cj.ClientPreparedQuery: com.mysql.cj.QueryInfo queryInfo>;	$r2 = r1.<com.mysql.cj.ClientPreparedQuery: com.mysql.cj.QueryInfo queryInfo>;	$r21 = virtualinvoke $r2.<com.mysql.cj.QueryInfo: byte[][] getStaticSqlParts()>();	i5 = 0;	$i6 = r1.<com.mysql.cj.ClientPreparedQuery: int parameterCount>;	if i5 >= $i6 goto $r3 = r1.<com.mysql.cj.ClientPreparedQuery: java.lang.String charEncoding>;	$r3 = r1.<com.mysql.cj.ClientPreparedQuery: java.lang.String charEncoding>;	if $r3 == null goto $i1 = r1.<com.mysql.cj.ClientPreparedQuery: int parameterCount>;	$i2 = r1.<com.mysql.cj.ClientPreparedQuery: int parameterCount>;	$r7 = $r21[$i2];	$r6 = r1.<com.mysql.cj.ClientPreparedQuery: java.lang.String charEncoding>;	$r26 = staticinvoke <com.mysql.cj.util.StringUtils: java.lang.String toString(byte[],java.lang.String)>($r7, $r6);	goto [?= virtualinvoke $r27.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r26)];	virtualinvoke $r27.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r26);	$r5 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.String toString()>();	return $r5
;block_num 6