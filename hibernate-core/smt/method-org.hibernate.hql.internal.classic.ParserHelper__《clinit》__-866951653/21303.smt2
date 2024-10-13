(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var906 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var906-init () var906)
(declare-fun <init>/273077462 (var906) void)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(define-const var2367 var906 var906-init) ; Statement: $r4 = new java.util.BitSet 
(assert true)
;(assert (<init>/273077462 var2367)) ; Statement: specialinvoke $r4.<java.util.BitSet: void <init>()>() 

(declare-const var2367!1 var906)
(define-const var3984 var906 var2367!1) ; Statement: <org.hibernate.hql.internal.classic.ParserHelper: java.util.BitSet HQL_SEPARATORS_BITSET> = $r4 
(define-const var3521 Int 0) ; Statement: i2 = 0 
(assert true) ; Non Conditional
(define-const var2212 String " \n\r\f\t,()=<>&|+-=/*\u0027^![]#~\u005c") ; Statement: $r1 = " \n\r\f\t,()=<>&|+-=/*\'^![]#~\\" 
(assert true)
(define-const var3510 Int (length/-134980193 var2212)) ; Statement: $i0 = virtualinvoke $r1.<java.lang.String: int length()>() 
 ; Statement: if i2 >= $i0 goto return 
(assert (>= var3521 var3510)) ; Cond: i2 >= $i0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var906-init=([], java.util.BitSet), <init>/273077462=([java.util.BitSet], void), length/-134980193=([java.lang.String], int)}
; {var906=java.util.BitSet, var2367=$r4, var3984=<org.hibernate.hql.internal.classic.ParserHelper: java.util.BitSet HQL_SEPARATORS_BITSET>, var3521=i2, var2212=$r1, var3510=$i0}
; {java.util.BitSet=var906, $r4=var2367, <org.hibernate.hql.internal.classic.ParserHelper: java.util.BitSet HQL_SEPARATORS_BITSET>=var3984, i2=var3521, $r1=var2212, $i0=var3510}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts $r4 = new java.util.BitSet;	specialinvoke $r4.<java.util.BitSet: void <init>()>();	<org.hibernate.hql.internal.classic.ParserHelper: java.util.BitSet HQL_SEPARATORS_BITSET> = $r4;	i2 = 0;	$r1 = " \n\r\f\t,()=<>&|+-=/*\'^![]#~\\";	$i0 = virtualinvoke $r1.<java.lang.String: int length()>();	if i2 >= $i0 goto return;	return
;block_num 3