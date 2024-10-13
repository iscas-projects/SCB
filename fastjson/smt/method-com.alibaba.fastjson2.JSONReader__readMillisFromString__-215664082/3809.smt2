(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var350 0)
(declare-sort var796 0)
(declare-sort var695 0)
(declare-sort var3291 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun wasNull/1287024874 (var350) Bool)
(declare-fun context/1287024874 (var350) var796)
(declare-fun dateFormat/-445774891 (var796) String)
(declare-fun getStringLength/484744461 (var350) Int)
(declare-fun readMillis19/-642712223 (var350) Int)
(declare-const null-var350 var350)
(declare-const null-String String)
(declare-const null-var3291 var3291)
(declare-const var3887 var350) ; Statement: r0 := @this: com.alibaba.fastjson2.JSONReader 
(assert (not (= var3887 null-var350)))
(declare-const var3887!1 var350)
(assert (not (= var3887!1 null-var350)))
(assert (= (wasNull/1287024874 var3887!1) (ite (= 1 0) true false))) ; Statement: r0.<com.alibaba.fastjson2.JSONReader: boolean wasNull> = 0 
(define-const var2601 var796 (context/1287024874 var3887!1)) ; Statement: $r1 = r0.<com.alibaba.fastjson2.JSONReader: com.alibaba.fastjson2.JSONReader$Context context> 
(define-const var484 String (dateFormat/-445774891 var2601)) ; Statement: r2 = $r1.<com.alibaba.fastjson2.JSONReader$Context: java.lang.String dateFormat> 
 ; Statement: if r2 == null goto $i23 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: int getStringLength()>() 
(assert (= var484 null-String)) ; Cond: r2 == null 
(assert true)
(define-const var2214 Int (getStringLength/484744461 var3887!1)) ; Statement: $i23 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: int getStringLength()>() 
(define-const var1875 var3291 null-var3291) ; Statement: r53 = null 
 ; Statement: tableswitch($i23) {     case 8: goto r54 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: java.time.LocalDate readLocalDate8()>();     case 9: goto r55 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: java.time.LocalDate readLocalDate9()>();     case 10: goto r56 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: java.time.LocalDate readLocalDate10()>();     case 11: goto r58 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: java.time.LocalDate readLocalDate11()>();     case 12: goto r53 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: java.time.LocalDateTime readLocalDateTime12()>();     case 13: goto r59 = null;     case 14: goto r53 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: java.time.LocalDateTime readLocalDateTime14()>();     case 15: goto r59 = null;     case 16: goto r53 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: java.time.LocalDateTime readLocalDateTime16()>();     case 17: goto r53 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: java.time.LocalDateTime readLocalDateTime17()>();     case 18: goto r53 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: java.time.LocalDateTime readLocalDateTime18()>();     case 19: goto l24 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: long readMillis19()>();     case 20: goto r53 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: java.time.LocalDateTime readLocalDateTime20()>();     default: goto r59 = null; } 
(assert (and (= var2214 19) (and (not (= var2214 18)) (and (not (= var2214 17)) (and (not (= var2214 16)) (and (not (= var2214 15)) (and (not (= var2214 14)) (and (not (= var2214 13)) (and (not (= var2214 12)) (and (not (= var2214 11)) (and (not (= var2214 10)) (and (not (= var2214 9)) (and (not (= var2214 8)) true))))))))))))) ; Intersect: Cond: $i23 == 19  and Intersect: Negate: Cond: $i23 == 18   and Intersect: Negate: Cond: $i23 == 17   and Intersect: Negate: Cond: $i23 == 16   and Intersect: Negate: Cond: $i23 == 15   and Intersect: Negate: Cond: $i23 == 14   and Intersect: Negate: Cond: $i23 == 13   and Intersect: Negate: Cond: $i23 == 12   and Intersect: Negate: Cond: $i23 == 11   and Intersect: Negate: Cond: $i23 == 10   and Intersect: Negate: Cond: $i23 == 9   and Intersect: Negate: Cond: $i23 == 8   and Non Conditional            
(assert true)
(define-const var58 Int (readMillis19/-642712223 var3887!1)) ; Statement: l24 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: long readMillis19()>() 
(define-const var1517 Int (ite (> var58 0) 1 (ite (< var58 0) (- 1) 0))) ; Statement: $b21 = l24 cmp 0L 
 ; Statement: if $b21 != 0 goto return l24 
(assert (not (= var1517 0))) ; Cond: $b21 != 0 
 ; Statement: return l24 
(check-sat)
(get-model)
(get-unsat-core)
; {wasNull/1287024874=([com.alibaba.fastjson2.JSONReader], boolean), context/1287024874=([com.alibaba.fastjson2.JSONReader], com.alibaba.fastjson2.JSONReader$Context), dateFormat/-445774891=([com.alibaba.fastjson2.JSONReader$Context], java.lang.String), getStringLength/484744461=([com.alibaba.fastjson2.JSONReader], int), readMillis19/-642712223=([com.alibaba.fastjson2.JSONReader], long)}
; {var350=com.alibaba.fastjson2.JSONReader, var3887=r0, var796=com.alibaba.fastjson2.JSONReader$Context, var2601=$r1, var484=r2, var695=null_type, var2214=$i23, var3291=java.time.LocalDateTime, var1875=r53, var58=l24, var1517=$b21}
; {com.alibaba.fastjson2.JSONReader=var350, r0=var3887, com.alibaba.fastjson2.JSONReader$Context=var796, $r1=var2601, r2=var484, null_type=var695, $i23=var2214, java.time.LocalDateTime=var3291, r53=var1875, l24=var58, $b21=var1517}
;seq 
;cnt {}
;stmts r0 := @this: com.alibaba.fastjson2.JSONReader;	r0.<com.alibaba.fastjson2.JSONReader: boolean wasNull> = 0;	$r1 = r0.<com.alibaba.fastjson2.JSONReader: com.alibaba.fastjson2.JSONReader$Context context>;	r2 = $r1.<com.alibaba.fastjson2.JSONReader$Context: java.lang.String dateFormat>;	if r2 == null goto $i23 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: int getStringLength()>();	$i23 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: int getStringLength()>();	r53 = null;	tableswitch($i23) {     case 8: goto r54 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: java.time.LocalDate readLocalDate8()>();     case 9: goto r55 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: java.time.LocalDate readLocalDate9()>();     case 10: goto r56 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: java.time.LocalDate readLocalDate10()>();     case 11: goto r58 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: java.time.LocalDate readLocalDate11()>();     case 12: goto r53 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: java.time.LocalDateTime readLocalDateTime12()>();     case 13: goto r59 = null;     case 14: goto r53 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: java.time.LocalDateTime readLocalDateTime14()>();     case 15: goto r59 = null;     case 16: goto r53 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: java.time.LocalDateTime readLocalDateTime16()>();     case 17: goto r53 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: java.time.LocalDateTime readLocalDateTime17()>();     case 18: goto r53 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: java.time.LocalDateTime readLocalDateTime18()>();     case 19: goto l24 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: long readMillis19()>();     case 20: goto r53 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: java.time.LocalDateTime readLocalDateTime20()>();     default: goto r59 = null; };	l24 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: long readMillis19()>();	$b21 = l24 cmp 0L;	if $b21 != 0 goto return l24;	return l24
;block_num 4