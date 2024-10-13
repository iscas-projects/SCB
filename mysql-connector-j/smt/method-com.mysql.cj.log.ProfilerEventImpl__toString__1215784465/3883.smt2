(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1138 0)
(declare-sort var1350 0)
(declare-sort var329 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getEventType/-1535808990 (var1138) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun message/-1616942791 (var1138) String)
(declare-fun var1350-init () var1350)
(declare-fun eventCreationTime/-1616942791 (var1138) Int)
(declare-fun <init>/593337323 (var1350 Int) void)
(declare-fun append/-1031950772 (String var329) String)
(declare-fun cast-from-var1350-to-var329 (var1350) var329)
(declare-fun eventDuration/-1616942791 (var1138) Int)
(declare-fun append/-901862667 (String Int) String)
(declare-fun connectionId/-1616942791 (var1138) Int)
(declare-fun statementId/-1616942791 (var1138) Int)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(declare-fun resultSetId/-1616942791 (var1138) Int)
(declare-fun eventCreationPointDesc/-1616942791 (var1138) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1138 var1138)
(declare-const var2260 var1138) ; Statement: r1 := @this: com.mysql.cj.log.ProfilerEventImpl 
(assert (not (= var2260 null-var1138)))
(define-const var1712 String String-init) ; Statement: $r6 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1712)) ; Statement: specialinvoke $r6.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1712!1 String)
(assert (= var1712!1 ""))
(assert true)
;(assert (append/672562846 var1712!1 "[")) ; Statement: virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[") 
(declare-const var1712!2 String)
(assert (= var1712!2 (str.++ var1712!1 "[")))
(assert true)
(define-const var3647 Int (getEventType/-1535808990 var2260)) ; Statement: $b0 = virtualinvoke r1.<com.mysql.cj.log.ProfilerEventImpl: byte getEventType()>() 
(define-const var2271 Int (cast-from-Int-to-Int var3647)) ; Statement: $i6 = (int) $b0 
 ; Statement: tableswitch($i6) {     case 0: goto virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("USAGE ADVISOR");     case 1: goto virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("CONSTRUCT");     case 2: goto virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("PREPARE");     case 3: goto virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("QUERY");     case 4: goto virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("EXECUTE");     case 5: goto virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("FETCH");     case 6: goto virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("SLOW QUERY");     default: goto virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("UNKNOWN"); } 
(assert (and (not (= var2271 6)) (and (not (= var2271 5)) (and (not (= var2271 4)) (and (not (= var2271 3)) (and (not (= var2271 2)) (and (not (= var2271 1)) (and (not (= var2271 0)) true)))))))) ; Intersect: Negate: Cond: $i6 == 6   and Intersect: Negate: Cond: $i6 == 5   and Intersect: Negate: Cond: $i6 == 4   and Intersect: Negate: Cond: $i6 == 3   and Intersect: Negate: Cond: $i6 == 2   and Intersect: Negate: Cond: $i6 == 1   and Intersect: Negate: Cond: $i6 == 0   and Non Conditional       
(assert true)
;(assert (append/672562846 var1712!2 "UNKNOWN")) ; Statement: virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("UNKNOWN") 
(declare-const var1712!3 String)
(assert (= var1712!3 (str.++ var1712!2 "UNKNOWN")))
(assert true) ; Non Conditional
(assert true)
;(assert (append/672562846 var1712!3 "] ")) ; Statement: virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("] ") 
(declare-const var1712!4 String)
(assert (= var1712!4 (str.++ var1712!3 "] ")))
(define-const var473 String (message/-1616942791 var2260)) ; Statement: $r2 = r1.<com.mysql.cj.log.ProfilerEventImpl: java.lang.String message> 
(assert true)
;(assert (append/672562846 var1712!4 var473)) ; Statement: virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var1712!5 String)
(assert (= var1712!5 (str.++ var1712!4 var473)))
(assert true)
;(assert (append/672562846 var1712!5 " [Created on: ")) ; Statement: virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" [Created on: ") 
(declare-const var1712!6 String)
(assert (= var1712!6 (str.++ var1712!5 " [Created on: ")))
(define-const var876 var1350 var1350-init) ; Statement: $r7 = new java.util.Date 
(define-const var1768 Int (eventCreationTime/-1616942791 var2260)) ; Statement: $l1 = r1.<com.mysql.cj.log.ProfilerEventImpl: long eventCreationTime> 
(assert true)
;(assert (<init>/593337323 var876 var1768)) ; Statement: specialinvoke $r7.<java.util.Date: void <init>(long)>($l1) 

(declare-const var876!1 var1350)
(declare-const var1768!1 Int)
(assert true)
;(assert (append/-1031950772 var1712!6 (cast-from-var1350-to-var329 var876!1))) ; Statement: virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r7) 
(declare-const var1712!7 String)
(assert (str.prefixof var1712!6 var1712!7))
(assert true)
;(assert (append/672562846 var1712!7 ", duration: ")) ; Statement: virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", duration: ") 
(declare-const var1712!8 String)
(assert (= var1712!8 (str.++ var1712!7 ", duration: ")))
(define-const var1585 Int (eventDuration/-1616942791 var2260)) ; Statement: $l2 = r1.<com.mysql.cj.log.ProfilerEventImpl: long eventDuration> 
(assert true)
;(assert (append/-901862667 var1712!8 var1585)) ; Statement: virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l2) 
(declare-const var1712!9 String)
(assert (str.prefixof var1712!8 var1712!9))
(assert true)
;(assert (append/672562846 var1712!9 ", connection-id: ")) ; Statement: virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", connection-id: ") 
(declare-const var1712!10 String)
(assert (= var1712!10 (str.++ var1712!9 ", connection-id: ")))
(define-const var2521 Int (connectionId/-1616942791 var2260)) ; Statement: $l3 = r1.<com.mysql.cj.log.ProfilerEventImpl: long connectionId> 
(assert true)
;(assert (append/-901862667 var1712!10 var2521)) ; Statement: virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l3) 
(declare-const var1712!11 String)
(assert (str.prefixof var1712!10 var1712!11))
(assert true)
;(assert (append/672562846 var1712!11 ", statement-id: ")) ; Statement: virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", statement-id: ") 
(declare-const var1712!12 String)
(assert (= var1712!12 (str.++ var1712!11 ", statement-id: ")))
(define-const var2009 Int (statementId/-1616942791 var2260)) ; Statement: $i4 = r1.<com.mysql.cj.log.ProfilerEventImpl: int statementId> 
(assert true)
;(assert (append/-1001720160 var1712!12 var2009)) ; Statement: virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i4) 
(declare-const var1712!13 String)
(assert (str.prefixof var1712!12 var1712!13))
(assert true)
;(assert (append/672562846 var1712!13 ", resultset-id: ")) ; Statement: virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", resultset-id: ") 
(declare-const var1712!14 String)
(assert (= var1712!14 (str.++ var1712!13 ", resultset-id: ")))
(define-const var2187 Int (resultSetId/-1616942791 var2260)) ; Statement: $i5 = r1.<com.mysql.cj.log.ProfilerEventImpl: int resultSetId> 
(assert true)
;(assert (append/-1001720160 var1712!14 var2187)) ; Statement: virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i5) 
(declare-const var1712!15 String)
(assert (str.prefixof var1712!14 var1712!15))
(assert true)
;(assert (append/672562846 var1712!15 ",")) ; Statement: virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(",") 
(declare-const var1712!16 String)
(assert (= var1712!16 (str.++ var1712!15 ",")))
(define-const var358 String (eventCreationPointDesc/-1616942791 var2260)) ; Statement: $r4 = r1.<com.mysql.cj.log.ProfilerEventImpl: java.lang.String eventCreationPointDesc> 
(assert true)
;(assert (append/672562846 var1712!16 var358)) ; Statement: virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var1712!17 String)
(assert (= var1712!17 (str.++ var1712!16 var358)))
(assert true)
;(assert (append/672562846 var1712!17 "]")) ; Statement: virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]") 
(declare-const var1712!18 String)
(assert (= var1712!18 (str.++ var1712!17 "]")))
(assert true)
(define-const var2312 String (toString/-2075883882 var1712!18)) ; Statement: $r5 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getEventType/-1535808990=([com.mysql.cj.log.ProfilerEventImpl], byte), cast-from-Int-to-Int=([byte], int), message/-1616942791=([com.mysql.cj.log.ProfilerEventImpl], java.lang.String), var1350-init=([], java.util.Date), eventCreationTime/-1616942791=([com.mysql.cj.log.ProfilerEventImpl], long), <init>/593337323=([java.util.Date, long], void), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var1350-to-var329=([java.util.Date], java.lang.Object), eventDuration/-1616942791=([com.mysql.cj.log.ProfilerEventImpl], long), append/-901862667=([java.lang.StringBuilder, long], java.lang.StringBuilder), connectionId/-1616942791=([com.mysql.cj.log.ProfilerEventImpl], long), statementId/-1616942791=([com.mysql.cj.log.ProfilerEventImpl], int), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), resultSetId/-1616942791=([com.mysql.cj.log.ProfilerEventImpl], int), eventCreationPointDesc/-1616942791=([com.mysql.cj.log.ProfilerEventImpl], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1138=com.mysql.cj.log.ProfilerEventImpl, var2260=r1, var1712=$r6, var3647=$b0, var2271=$i6, var473=$r2, var1350=java.util.Date, var876=$r7, var1768=$l1, var329=java.lang.Object, var1585=$l2, var2521=$l3, var2009=$i4, var2187=$i5, var358=$r4, var2312=$r5}
; {com.mysql.cj.log.ProfilerEventImpl=var1138, r1=var2260, $r6=var1712, $b0=var3647, $i6=var2271, $r2=var473, java.util.Date=var1350, $r7=var876, $l1=var1768, java.lang.Object=var329, $l2=var1585, $l3=var2521, $i4=var2009, $i5=var2187, $r4=var358, $r5=var2312}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(long)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(long)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 12,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(long)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.mysql.cj.log.ProfilerEventImpl;	$r6 = new java.lang.StringBuilder;	specialinvoke $r6.<java.lang.StringBuilder: void <init>()>();	virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[");	$b0 = virtualinvoke r1.<com.mysql.cj.log.ProfilerEventImpl: byte getEventType()>();	$i6 = (int) $b0;	tableswitch($i6) {     case 0: goto virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("USAGE ADVISOR");     case 1: goto virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("CONSTRUCT");     case 2: goto virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("PREPARE");     case 3: goto virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("QUERY");     case 4: goto virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("EXECUTE");     case 5: goto virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("FETCH");     case 6: goto virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("SLOW QUERY");     default: goto virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("UNKNOWN"); };	virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("UNKNOWN");	virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("] ");	$r2 = r1.<com.mysql.cj.log.ProfilerEventImpl: java.lang.String message>;	virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" [Created on: ");	$r7 = new java.util.Date;	$l1 = r1.<com.mysql.cj.log.ProfilerEventImpl: long eventCreationTime>;	specialinvoke $r7.<java.util.Date: void <init>(long)>($l1);	virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r7);	virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", duration: ");	$l2 = r1.<com.mysql.cj.log.ProfilerEventImpl: long eventDuration>;	virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l2);	virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", connection-id: ");	$l3 = r1.<com.mysql.cj.log.ProfilerEventImpl: long connectionId>;	virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l3);	virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", statement-id: ");	$i4 = r1.<com.mysql.cj.log.ProfilerEventImpl: int statementId>;	virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i4);	virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", resultset-id: ");	$i5 = r1.<com.mysql.cj.log.ProfilerEventImpl: int resultSetId>;	virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i5);	virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(",");	$r4 = r1.<com.mysql.cj.log.ProfilerEventImpl: java.lang.String eventCreationPointDesc>;	virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]");	$r5 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	return $r5
;block_num 3