(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var401 0)
(declare-sort var1920 0)
(declare-sort var394 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun this$0/1514122341 (var401) var1920)
(declare-fun keys/-2093063179 (var1920) (Array Int (Array Int Int)))
(declare-fun pos/1514122341 (var401) Int)
(declare-fun append/109888945 (String (Array Int Int)) String)
(declare-fun append/-1166366385 (String Int) String)
(declare-fun values/-2093063179 (var1920) (Array Int var394))
(declare-fun cast-from-var1920-to-var394 (var1920) var394)
(declare-fun append/-1031950772 (String var394) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var401 var401)
(declare-const var2008 var401) ; Statement: r1 := @this: org.apache.lucene.analysis.CharArrayMap$MapEntry 
(assert (not (= var2008 null-var401)))
(define-const var2745 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2745)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2745!1 String)
(assert (= var2745!1 ""))
(define-const var3786 var1920 (this$0/1514122341 var2008)) ; Statement: $r2 = r1.<org.apache.lucene.analysis.CharArrayMap$MapEntry: org.apache.lucene.analysis.CharArrayMap this$0> 
(define-const var2085 (Array Int (Array Int Int)) (keys/-2093063179 var3786)) ; Statement: $r3 = $r2.<org.apache.lucene.analysis.CharArrayMap: char[][] keys> 
(define-const var965 Int (pos/1514122341 var2008)) ; Statement: $i0 = r1.<org.apache.lucene.analysis.CharArrayMap$MapEntry: int pos> 
(define-const var1215 (Array Int Int) (select var2085 var965)) ; Statement: $r4 = $r3[$i0] 
(assert true)
(define-const var2445 String (append/109888945 var2745!1 var1215)) ; Statement: $r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char[])>($r4) 
(declare-const var2745!2 String)
(assert (str.prefixof var2745!1 var2745!2))
(assert true)
(define-const var1300 String (append/-1166366385 var2445 61)) ; Statement: $r12 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(61) 
(declare-const var2445!1 String)
(assert (str.prefixof var2445 var2445!1))
(define-const var2062 var1920 (this$0/1514122341 var2008)) ; Statement: $r6 = r1.<org.apache.lucene.analysis.CharArrayMap$MapEntry: org.apache.lucene.analysis.CharArrayMap this$0> 
(define-const var1947 (Array Int var394) (values/-2093063179 var2062)) ; Statement: $r7 = $r6.<org.apache.lucene.analysis.CharArrayMap: java.lang.Object[] values> 
(define-const var1246 Int (pos/1514122341 var2008)) ; Statement: $i1 = r1.<org.apache.lucene.analysis.CharArrayMap$MapEntry: int pos> 
(define-const var1036 var394 (select var1947 var1246)) ; Statement: $r9 = $r7[$i1] 
(define-const var3175 var1920 (this$0/1514122341 var2008)) ; Statement: $r8 = r1.<org.apache.lucene.analysis.CharArrayMap$MapEntry: org.apache.lucene.analysis.CharArrayMap this$0> 
 ; Statement: if $r9 != $r8 goto $r10 = r1.<org.apache.lucene.analysis.CharArrayMap$MapEntry: org.apache.lucene.analysis.CharArrayMap this$0> 
(assert (not (= var1036 (cast-from-var1920-to-var394 var3175)))) ; Cond: $r9 != $r8 
(define-const var2692 var1920 (this$0/1514122341 var2008)) ; Statement: $r10 = r1.<org.apache.lucene.analysis.CharArrayMap$MapEntry: org.apache.lucene.analysis.CharArrayMap this$0> 
(define-const var584 (Array Int var394) (values/-2093063179 var2692)) ; Statement: $r11 = $r10.<org.apache.lucene.analysis.CharArrayMap: java.lang.Object[] values> 
(define-const var3215 Int (pos/1514122341 var2008)) ; Statement: $i2 = r1.<org.apache.lucene.analysis.CharArrayMap$MapEntry: int pos> 
(define-const var907 var394 (select var584 var3215)) ; Statement: $r15 = $r11[$i2] 
(assert true) ; Non Conditional
(assert true)
(define-const var1497 String (append/-1031950772 var1300 var907)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r15) 
(declare-const var1300!1 String)
(assert (str.prefixof var1300 var1300!1))
(assert true)
(define-const var254 String (toString/-2075883882 var1497)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r14 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), this$0/1514122341=([org.apache.lucene.analysis.CharArrayMap$MapEntry], org.apache.lucene.analysis.CharArrayMap), keys/-2093063179=([org.apache.lucene.analysis.CharArrayMap], char[][]), pos/1514122341=([org.apache.lucene.analysis.CharArrayMap$MapEntry], int), append/109888945=([java.lang.StringBuilder, char[]], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), values/-2093063179=([org.apache.lucene.analysis.CharArrayMap], java.lang.Object[]), cast-from-var1920-to-var394=([org.apache.lucene.analysis.CharArrayMap], java.lang.Object), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var401=org.apache.lucene.analysis.CharArrayMap$MapEntry, var2008=r1, var2745=$r0, var1920=org.apache.lucene.analysis.CharArrayMap, var3786=$r2, var2085=$r3, var965=$i0, var1215=$r4, var2445=$r5, var1300=$r12, var2062=$r6, var394=java.lang.Object, var1947=$r7, var1246=$i1, var1036=$r9, var3175=$r8, var2692=$r10, var584=$r11, var3215=$i2, var907=$r15, var1497=$r13, var254=$r14}
; {org.apache.lucene.analysis.CharArrayMap$MapEntry=var401, r1=var2008, $r0=var2745, org.apache.lucene.analysis.CharArrayMap=var1920, $r2=var3786, $r3=var2085, $i0=var965, $r4=var1215, $r5=var2445, $r12=var1300, $r6=var2062, java.lang.Object=var394, $r7=var1947, $i1=var1246, $r9=var1036, $r8=var3175, $r10=var2692, $r11=var584, $i2=var3215, $r15=var907, $r13=var1497, $r14=var254}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char[])>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char[])>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.lucene.analysis.CharArrayMap$MapEntry;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = r1.<org.apache.lucene.analysis.CharArrayMap$MapEntry: org.apache.lucene.analysis.CharArrayMap this$0>;	$r3 = $r2.<org.apache.lucene.analysis.CharArrayMap: char[][] keys>;	$i0 = r1.<org.apache.lucene.analysis.CharArrayMap$MapEntry: int pos>;	$r4 = $r3[$i0];	$r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char[])>($r4);	$r12 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(61);	$r6 = r1.<org.apache.lucene.analysis.CharArrayMap$MapEntry: org.apache.lucene.analysis.CharArrayMap this$0>;	$r7 = $r6.<org.apache.lucene.analysis.CharArrayMap: java.lang.Object[] values>;	$i1 = r1.<org.apache.lucene.analysis.CharArrayMap$MapEntry: int pos>;	$r9 = $r7[$i1];	$r8 = r1.<org.apache.lucene.analysis.CharArrayMap$MapEntry: org.apache.lucene.analysis.CharArrayMap this$0>;	if $r9 != $r8 goto $r10 = r1.<org.apache.lucene.analysis.CharArrayMap$MapEntry: org.apache.lucene.analysis.CharArrayMap this$0>;	$r10 = r1.<org.apache.lucene.analysis.CharArrayMap$MapEntry: org.apache.lucene.analysis.CharArrayMap this$0>;	$r11 = $r10.<org.apache.lucene.analysis.CharArrayMap: java.lang.Object[] values>;	$i2 = r1.<org.apache.lucene.analysis.CharArrayMap$MapEntry: int pos>;	$r15 = $r11[$i2];	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r15);	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>();	return $r14
;block_num 3