(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3252 0)
(declare-sort var3776 0)
(declare-sort var2764 0)
(declare-sort var961 0)
(declare-sort var2867 0)
(declare-sort var1766 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun batchCommandIndex/508865650 (var3252) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun queryInfo/508865650 (var3252) var2764)
(declare-fun getStaticSqlParts/-1985930351 (var2764) (Array Int (Array Int Int)))
(declare-fun parameterCount/508865650 (var3252) Int)
(declare-fun charEncoding/-459319496 (var961) String)
(declare-fun cast-from-var3252-to-var961 (var3252) var961)
(declare-fun var1766_toAsciiString/-754780337 ((Array Int Int)) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3252 var3252)
(declare-const null-var3776 var3776)
(declare-const null-String String)
(declare-const var2940 var3252) ; Statement: r1 := @this: com.mysql.cj.ClientPreparedQuery 
(assert (not (= var2940 null-var3252)))
(define-const var2451 String String-init) ; Statement: $r27 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2451)) ; Statement: specialinvoke $r27.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2451!1 String)
(assert (= var2451!1 ""))
(define-const var2307 var3776 null-var3776) ; Statement: r22 = null 
(define-const var26 Int (batchCommandIndex/508865650 var2940)) ; Statement: $i0 = r1.<com.mysql.cj.ClientPreparedQuery: int batchCommandIndex> 
(define-const var3622 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i8 = (int) -1 
 ; Statement: if $i0 == $i8 goto $r2 = r1.<com.mysql.cj.ClientPreparedQuery: com.mysql.cj.QueryInfo queryInfo> 
(assert (= var26 var3622)) ; Cond: $i0 == $i8 
(define-const var679 var2764 (queryInfo/508865650 var2940)) ; Statement: $r2 = r1.<com.mysql.cj.ClientPreparedQuery: com.mysql.cj.QueryInfo queryInfo> 
(assert true)
(define-const var1387 (Array Int (Array Int Int)) (getStaticSqlParts/-1985930351 var679)) ; Statement: $r21 = virtualinvoke $r2.<com.mysql.cj.QueryInfo: byte[][] getStaticSqlParts()>() 
(define-const var2073 Int 0) ; Statement: i5 = 0 
(assert true) ; Non Conditional
(define-const var1257 Int (parameterCount/508865650 var2940)) ; Statement: $i6 = r1.<com.mysql.cj.ClientPreparedQuery: int parameterCount> 
 ; Statement: if i5 >= $i6 goto $r3 = r1.<com.mysql.cj.ClientPreparedQuery: java.lang.String charEncoding> 
(assert (>= var2073 var1257)) ; Cond: i5 >= $i6 
(define-const var3479 String (charEncoding/-459319496 (cast-from-var3252-to-var961 var2940))) ; Statement: $r3 = r1.<com.mysql.cj.ClientPreparedQuery: java.lang.String charEncoding> 
 ; Statement: if $r3 == null goto $i1 = r1.<com.mysql.cj.ClientPreparedQuery: int parameterCount> 
(assert (= var3479 null-String)) ; Cond: $r3 == null 
(define-const var894 Int (parameterCount/508865650 var2940)) ; Statement: $i1 = r1.<com.mysql.cj.ClientPreparedQuery: int parameterCount> 
(define-const var994 (Array Int Int) (select var1387 var894)) ; Statement: $r4 = $r21[$i1] 
(define-const var1165 String (var1766_toAsciiString/-754780337 var994)) ; Statement: $r26 = staticinvoke <com.mysql.cj.util.StringUtils: java.lang.String toAsciiString(byte[])>($r4) 
(assert true) ; Non Conditional
(assert true)
;(assert (append/672562846 var2451!1 var1165)) ; Statement: virtualinvoke $r27.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r26) 
(declare-const var2451!2 String)
(assert (= var2451!2 (str.++ var2451!1 var1165)))
(assert true)
(define-const var113 String (toString/-2075883882 var2451!2)) ; Statement: $r5 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), batchCommandIndex/508865650=([com.mysql.cj.ClientPreparedQuery], int), cast-from-Int-to-Int=([int], int), queryInfo/508865650=([com.mysql.cj.ClientPreparedQuery], com.mysql.cj.QueryInfo), getStaticSqlParts/-1985930351=([com.mysql.cj.QueryInfo], byte[][]), parameterCount/508865650=([com.mysql.cj.ClientPreparedQuery], int), charEncoding/-459319496=([com.mysql.cj.AbstractQuery], java.lang.String), cast-from-var3252-to-var961=([com.mysql.cj.ClientPreparedQuery], com.mysql.cj.AbstractQuery), var1766_toAsciiString/-754780337=([byte[]], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3252=com.mysql.cj.ClientPreparedQuery, var2940=r1, var2451=$r27, var3776=java.lang.Object, var2307=r22, var26=$i0, var3622=$i8, var2764=com.mysql.cj.QueryInfo, var679=$r2, var1387=$r21, var2073=i5, var1257=$i6, var961=com.mysql.cj.AbstractQuery, var3479=$r3, var2867=null_type, var894=$i1, var994=$r4, var1766=com.mysql.cj.util.StringUtils, var1165=$r26, var113=$r5}
; {com.mysql.cj.ClientPreparedQuery=var3252, r1=var2940, $r27=var2451, java.lang.Object=var3776, r22=var2307, $i0=var26, $i8=var3622, com.mysql.cj.QueryInfo=var2764, $r2=var679, $r21=var1387, i5=var2073, $i6=var1257, com.mysql.cj.AbstractQuery=var961, $r3=var3479, null_type=var2867, $i1=var894, $r4=var994, com.mysql.cj.util.StringUtils=var1766, $r26=var1165, $r5=var113}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.mysql.cj.ClientPreparedQuery;	$r27 = new java.lang.StringBuilder;	specialinvoke $r27.<java.lang.StringBuilder: void <init>()>();	r22 = null;	$i0 = r1.<com.mysql.cj.ClientPreparedQuery: int batchCommandIndex>;	$i8 = (int) -1;	if $i0 == $i8 goto $r2 = r1.<com.mysql.cj.ClientPreparedQuery: com.mysql.cj.QueryInfo queryInfo>;	$r2 = r1.<com.mysql.cj.ClientPreparedQuery: com.mysql.cj.QueryInfo queryInfo>;	$r21 = virtualinvoke $r2.<com.mysql.cj.QueryInfo: byte[][] getStaticSqlParts()>();	i5 = 0;	$i6 = r1.<com.mysql.cj.ClientPreparedQuery: int parameterCount>;	if i5 >= $i6 goto $r3 = r1.<com.mysql.cj.ClientPreparedQuery: java.lang.String charEncoding>;	$r3 = r1.<com.mysql.cj.ClientPreparedQuery: java.lang.String charEncoding>;	if $r3 == null goto $i1 = r1.<com.mysql.cj.ClientPreparedQuery: int parameterCount>;	$i1 = r1.<com.mysql.cj.ClientPreparedQuery: int parameterCount>;	$r4 = $r21[$i1];	$r26 = staticinvoke <com.mysql.cj.util.StringUtils: java.lang.String toAsciiString(byte[])>($r4);	virtualinvoke $r27.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r26);	$r5 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.String toString()>();	return $r5
;block_num 6