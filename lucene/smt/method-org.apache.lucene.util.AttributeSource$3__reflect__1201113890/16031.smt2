(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2658 0)
(declare-sort var362 0)
(declare-sort var3539 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun val$buffer/770622096 (var2658) String)
(declare-fun length/-171891354 (String) Int)
(declare-fun val$prependAttClass/770622096 (var2658) Bool)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1166366385 (String Int) String)
(declare-fun append/-1031950772 (String var3539) String)
(declare-const null-var2658 var2658)
(declare-const null-ClassObject ClassObject)
(declare-const null-String String)
(declare-const null-var3539 var3539)
(declare-const var1137 var2658) ; Statement: r0 := @this: org.apache.lucene.util.AttributeSource$3 
(assert (not (= var1137 null-var2658)))
(declare-const var2865 ClassObject) ; Statement: r7 := @parameter0: java.lang.Class 
(assert (not (= var2865 null-ClassObject)))
(declare-const var3548 String) ; Statement: r2 := @parameter1: java.lang.String 
(assert (not (= var3548 null-String)))
(declare-const var2357 var3539) ; Statement: r5 := @parameter2: java.lang.Object 
(assert (not (= var2357 null-var3539)))
(define-const var2609 String (val$buffer/770622096 var1137)) ; Statement: $r1 = r0.<org.apache.lucene.util.AttributeSource$3: java.lang.StringBuilder val$buffer> 
(assert true)
(define-const var2185 Int (length/-171891354 var2609)) ; Statement: $i0 = virtualinvoke $r1.<java.lang.StringBuilder: int length()>() 
 ; Statement: if $i0 <= 0 goto $z0 = r0.<org.apache.lucene.util.AttributeSource$3: boolean val$prependAttClass> 
(assert (<= var2185 0)) ; Cond: $i0 <= 0 
(define-const var946 Bool (val$prependAttClass/770622096 var1137)) ; Statement: $z0 = r0.<org.apache.lucene.util.AttributeSource$3: boolean val$prependAttClass> 
 ; Statement: if $z0 == 0 goto $r3 = r0.<org.apache.lucene.util.AttributeSource$3: java.lang.StringBuilder val$buffer> 
(assert (= (ite var946 1 0) 0)) ; Cond: $z0 == 0 
(define-const var351 String (val$buffer/770622096 var1137)) ; Statement: $r3 = r0.<org.apache.lucene.util.AttributeSource$3: java.lang.StringBuilder val$buffer> 
(assert true)
(define-const var336 String (append/672562846 var351 var3548)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var351!1 String)
(assert (= var351!1 (str.++ var351 var3548)))
(assert true)
(define-const var3971 String (append/-1166366385 var336 61)) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(61) 
(declare-const var336!1 String)
(assert (str.prefixof var336 var336!1))
 ; Statement: if r5 != null goto $r12 = r5 
(assert (not (= var2357 null-var3539))) ; Cond: r5 != null 
(define-const var3182 var3539 var2357) ; Statement: $r12 = r5 
(assert true) ; Non Conditional
(assert true)
;(assert (append/-1031950772 var3971 var3182)) ; Statement: virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r12) 
(declare-const var3971!1 String)
(assert (str.prefixof var3971 var3971!1))
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {val$buffer/770622096=([org.apache.lucene.util.AttributeSource$3], java.lang.StringBuilder), length/-171891354=([java.lang.StringBuilder], int), val$prependAttClass/770622096=([org.apache.lucene.util.AttributeSource$3], boolean), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder)}
; {var2658=org.apache.lucene.util.AttributeSource$3, var1137=r0, var2865=r7, var3548=r2, var362=null_type, var3539=java.lang.Object, var2357=r5, var2609=$r1, var2185=$i0, var946=$z0, var351=$r3, var336=$r4, var3971=$r6, var3182=$r12}
; {org.apache.lucene.util.AttributeSource$3=var2658, r0=var1137, r7=var2865, r2=var3548, null_type=var362, java.lang.Object=var3539, r5=var2357, $r1=var2609, $i0=var2185, $z0=var946, $r3=var351, $r4=var336, $r6=var3971, $r12=var3182}
;seq <java.lang.StringBuilder: int length()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>
;cnt {"<java.lang.StringBuilder: int length()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1}
;stmts r0 := @this: org.apache.lucene.util.AttributeSource$3;	r7 := @parameter0: java.lang.Class;	r2 := @parameter1: java.lang.String;	r5 := @parameter2: java.lang.Object;	$r1 = r0.<org.apache.lucene.util.AttributeSource$3: java.lang.StringBuilder val$buffer>;	$i0 = virtualinvoke $r1.<java.lang.StringBuilder: int length()>();	if $i0 <= 0 goto $z0 = r0.<org.apache.lucene.util.AttributeSource$3: boolean val$prependAttClass>;	$z0 = r0.<org.apache.lucene.util.AttributeSource$3: boolean val$prependAttClass>;	if $z0 == 0 goto $r3 = r0.<org.apache.lucene.util.AttributeSource$3: java.lang.StringBuilder val$buffer>;	$r3 = r0.<org.apache.lucene.util.AttributeSource$3: java.lang.StringBuilder val$buffer>;	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(61);	if r5 != null goto $r12 = r5;	$r12 = r5;	virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r12);	return
;block_num 5