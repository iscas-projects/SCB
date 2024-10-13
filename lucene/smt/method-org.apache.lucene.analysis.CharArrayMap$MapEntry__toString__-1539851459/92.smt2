(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3887 0)
(declare-sort var2718 0)
(declare-sort var2917 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun this$0/1514122341 (var3887) var2718)
(declare-fun keys/-2093063179 (var2718) (Array Int (Array Int Int)))
(declare-fun pos/1514122341 (var3887) Int)
(declare-fun append/109888945 (String (Array Int Int)) String)
(declare-fun append/-1166366385 (String Int) String)
(declare-fun values/-2093063179 (var2718) (Array Int var2917))
(declare-fun cast-from-var2718-to-var2917 (var2718) var2917)
(declare-fun cast-from-String-to-var2917 (String) var2917)
(declare-fun append/-1031950772 (String var2917) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3887 var3887)
(declare-const var87 var3887) ; Statement: r1 := @this: org.apache.lucene.analysis.CharArrayMap$MapEntry 
(assert (not (= var87 null-var3887)))
(define-const var975 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var975)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var975!1 String)
(assert (= var975!1 ""))
(define-const var746 var2718 (this$0/1514122341 var87)) ; Statement: $r2 = r1.<org.apache.lucene.analysis.CharArrayMap$MapEntry: org.apache.lucene.analysis.CharArrayMap this$0> 
(define-const var1446 (Array Int (Array Int Int)) (keys/-2093063179 var746)) ; Statement: $r3 = $r2.<org.apache.lucene.analysis.CharArrayMap: char[][] keys> 
(define-const var1505 Int (pos/1514122341 var87)) ; Statement: $i0 = r1.<org.apache.lucene.analysis.CharArrayMap$MapEntry: int pos> 
(define-const var1361 (Array Int Int) (select var1446 var1505)) ; Statement: $r4 = $r3[$i0] 
(assert true)
(define-const var1100 String (append/109888945 var975!1 var1361)) ; Statement: $r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char[])>($r4) 
(declare-const var975!2 String)
(assert (str.prefixof var975!1 var975!2))
(assert true)
(define-const var2199 String (append/-1166366385 var1100 61)) ; Statement: $r12 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(61) 
(declare-const var1100!1 String)
(assert (str.prefixof var1100 var1100!1))
(define-const var462 var2718 (this$0/1514122341 var87)) ; Statement: $r6 = r1.<org.apache.lucene.analysis.CharArrayMap$MapEntry: org.apache.lucene.analysis.CharArrayMap this$0> 
(define-const var694 (Array Int var2917) (values/-2093063179 var462)) ; Statement: $r7 = $r6.<org.apache.lucene.analysis.CharArrayMap: java.lang.Object[] values> 
(define-const var3171 Int (pos/1514122341 var87)) ; Statement: $i1 = r1.<org.apache.lucene.analysis.CharArrayMap$MapEntry: int pos> 
(define-const var1827 var2917 (select var694 var3171)) ; Statement: $r9 = $r7[$i1] 
(define-const var549 var2718 (this$0/1514122341 var87)) ; Statement: $r8 = r1.<org.apache.lucene.analysis.CharArrayMap$MapEntry: org.apache.lucene.analysis.CharArrayMap this$0> 
 ; Statement: if $r9 != $r8 goto $r10 = r1.<org.apache.lucene.analysis.CharArrayMap$MapEntry: org.apache.lucene.analysis.CharArrayMap this$0> 
(assert (not (not (= var1827 (cast-from-var2718-to-var2917 var549))))) ; Negate: Cond: $r9 != $r8  
(define-const var1901 var2917 (cast-from-String-to-var2917 "(this Map)")) ; Statement: $r15 = "(this Map)" 
 ; Statement: goto [?= $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r15)] 
(assert true) ; Non Conditional
(assert true)
(define-const var572 String (append/-1031950772 var2199 var1901)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r15) 
(declare-const var2199!1 String)
(assert (str.prefixof var2199 var2199!1))
(assert true)
(define-const var3760 String (toString/-2075883882 var572)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r14 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), this$0/1514122341=([org.apache.lucene.analysis.CharArrayMap$MapEntry], org.apache.lucene.analysis.CharArrayMap), keys/-2093063179=([org.apache.lucene.analysis.CharArrayMap], char[][]), pos/1514122341=([org.apache.lucene.analysis.CharArrayMap$MapEntry], int), append/109888945=([java.lang.StringBuilder, char[]], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), values/-2093063179=([org.apache.lucene.analysis.CharArrayMap], java.lang.Object[]), cast-from-var2718-to-var2917=([org.apache.lucene.analysis.CharArrayMap], java.lang.Object), cast-from-String-to-var2917=([java.lang.String], java.lang.Object), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3887=org.apache.lucene.analysis.CharArrayMap$MapEntry, var87=r1, var975=$r0, var2718=org.apache.lucene.analysis.CharArrayMap, var746=$r2, var1446=$r3, var1505=$i0, var1361=$r4, var1100=$r5, var2199=$r12, var462=$r6, var2917=java.lang.Object, var694=$r7, var3171=$i1, var1827=$r9, var549=$r8, var1901=$r15, var572=$r13, var3760=$r14}
; {org.apache.lucene.analysis.CharArrayMap$MapEntry=var3887, r1=var87, $r0=var975, org.apache.lucene.analysis.CharArrayMap=var2718, $r2=var746, $r3=var1446, $i0=var1505, $r4=var1361, $r5=var1100, $r12=var2199, $r6=var462, java.lang.Object=var2917, $r7=var694, $i1=var3171, $r9=var1827, $r8=var549, $r15=var1901, $r13=var572, $r14=var3760}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char[])>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char[])>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.lucene.analysis.CharArrayMap$MapEntry;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = r1.<org.apache.lucene.analysis.CharArrayMap$MapEntry: org.apache.lucene.analysis.CharArrayMap this$0>;	$r3 = $r2.<org.apache.lucene.analysis.CharArrayMap: char[][] keys>;	$i0 = r1.<org.apache.lucene.analysis.CharArrayMap$MapEntry: int pos>;	$r4 = $r3[$i0];	$r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char[])>($r4);	$r12 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(61);	$r6 = r1.<org.apache.lucene.analysis.CharArrayMap$MapEntry: org.apache.lucene.analysis.CharArrayMap this$0>;	$r7 = $r6.<org.apache.lucene.analysis.CharArrayMap: java.lang.Object[] values>;	$i1 = r1.<org.apache.lucene.analysis.CharArrayMap$MapEntry: int pos>;	$r9 = $r7[$i1];	$r8 = r1.<org.apache.lucene.analysis.CharArrayMap$MapEntry: org.apache.lucene.analysis.CharArrayMap this$0>;	if $r9 != $r8 goto $r10 = r1.<org.apache.lucene.analysis.CharArrayMap$MapEntry: org.apache.lucene.analysis.CharArrayMap this$0>;	$r15 = "(this Map)";	goto [?= $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r15)];	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r15);	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>();	return $r14
;block_num 3