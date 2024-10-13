(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var885 0)
(declare-sort var1362 0)
(declare-sort var1690 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun val$buffer/770622096 (var885) String)
(declare-fun length/-171891354 (String) Int)
(declare-fun val$prependAttClass/770622096 (var885) Bool)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1166366385 (String Int) String)
(declare-fun cast-from-String-to-var1690 (String) var1690)
(declare-fun append/-1031950772 (String var1690) String)
(declare-const null-var885 var885)
(declare-const null-ClassObject ClassObject)
(declare-const null-String String)
(declare-const null-var1690 var1690)
(declare-const var1647 var885) ; Statement: r0 := @this: org.apache.lucene.util.AttributeSource$3 
(assert (not (= var1647 null-var885)))
(declare-const var972 ClassObject) ; Statement: r7 := @parameter0: java.lang.Class 
(assert (not (= var972 null-ClassObject)))
(declare-const var1993 String) ; Statement: r2 := @parameter1: java.lang.String 
(assert (not (= var1993 null-String)))
(declare-const var3361 var1690) ; Statement: r5 := @parameter2: java.lang.Object 
(assert (not (= var3361 null-var1690)))
(define-const var222 String (val$buffer/770622096 var1647)) ; Statement: $r1 = r0.<org.apache.lucene.util.AttributeSource$3: java.lang.StringBuilder val$buffer> 
(assert true)
(define-const var3040 Int (length/-171891354 var222)) ; Statement: $i0 = virtualinvoke $r1.<java.lang.StringBuilder: int length()>() 
 ; Statement: if $i0 <= 0 goto $z0 = r0.<org.apache.lucene.util.AttributeSource$3: boolean val$prependAttClass> 
(assert (<= var3040 0)) ; Cond: $i0 <= 0 
(define-const var1820 Bool (val$prependAttClass/770622096 var1647)) ; Statement: $z0 = r0.<org.apache.lucene.util.AttributeSource$3: boolean val$prependAttClass> 
 ; Statement: if $z0 == 0 goto $r3 = r0.<org.apache.lucene.util.AttributeSource$3: java.lang.StringBuilder val$buffer> 
(assert (= (ite var1820 1 0) 0)) ; Cond: $z0 == 0 
(define-const var1720 String (val$buffer/770622096 var1647)) ; Statement: $r3 = r0.<org.apache.lucene.util.AttributeSource$3: java.lang.StringBuilder val$buffer> 
(assert true)
(define-const var1910 String (append/672562846 var1720 var1993)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var1720!1 String)
(assert (= var1720!1 (str.++ var1720 var1993)))
(assert true)
(define-const var2462 String (append/-1166366385 var1910 61)) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(61) 
(declare-const var1910!1 String)
(assert (str.prefixof var1910 var1910!1))
 ; Statement: if r5 != null goto $r12 = r5 
(assert (not (not (= var3361 null-var1690)))) ; Negate: Cond: r5 != null  
(define-const var3778 var1690 (cast-from-String-to-var1690 "null")) ; Statement: $r12 = "null" 
 ; Statement: goto [?= virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r12)] 
(assert true) ; Non Conditional
(assert true)
;(assert (append/-1031950772 var2462 var3778)) ; Statement: virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r12) 
(declare-const var2462!1 String)
(assert (str.prefixof var2462 var2462!1))
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {val$buffer/770622096=([org.apache.lucene.util.AttributeSource$3], java.lang.StringBuilder), length/-171891354=([java.lang.StringBuilder], int), val$prependAttClass/770622096=([org.apache.lucene.util.AttributeSource$3], boolean), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), cast-from-String-to-var1690=([java.lang.String], java.lang.Object), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder)}
; {var885=org.apache.lucene.util.AttributeSource$3, var1647=r0, var972=r7, var1993=r2, var1362=null_type, var1690=java.lang.Object, var3361=r5, var222=$r1, var3040=$i0, var1820=$z0, var1720=$r3, var1910=$r4, var2462=$r6, var3778=$r12}
; {org.apache.lucene.util.AttributeSource$3=var885, r0=var1647, r7=var972, r2=var1993, null_type=var1362, java.lang.Object=var1690, r5=var3361, $r1=var222, $i0=var3040, $z0=var1820, $r3=var1720, $r4=var1910, $r6=var2462, $r12=var3778}
;seq <java.lang.StringBuilder: int length()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>
;cnt {"<java.lang.StringBuilder: int length()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1}
;stmts r0 := @this: org.apache.lucene.util.AttributeSource$3;	r7 := @parameter0: java.lang.Class;	r2 := @parameter1: java.lang.String;	r5 := @parameter2: java.lang.Object;	$r1 = r0.<org.apache.lucene.util.AttributeSource$3: java.lang.StringBuilder val$buffer>;	$i0 = virtualinvoke $r1.<java.lang.StringBuilder: int length()>();	if $i0 <= 0 goto $z0 = r0.<org.apache.lucene.util.AttributeSource$3: boolean val$prependAttClass>;	$z0 = r0.<org.apache.lucene.util.AttributeSource$3: boolean val$prependAttClass>;	if $z0 == 0 goto $r3 = r0.<org.apache.lucene.util.AttributeSource$3: java.lang.StringBuilder val$buffer>;	$r3 = r0.<org.apache.lucene.util.AttributeSource$3: java.lang.StringBuilder val$buffer>;	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(61);	if r5 != null goto $r12 = r5;	$r12 = "null";	goto [?= virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r12)];	virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r12);	return
;block_num 5