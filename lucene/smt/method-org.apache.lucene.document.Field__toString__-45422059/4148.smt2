(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1560 0)
(declare-sort var191 0)
(declare-sort var773 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun type/835448125 (var1560) var191)
(declare-fun toString/-522406933 (var773) String)
(declare-fun cast-from-var191-to-var773 (var191) var773)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1166366385 (String Int) String)
(declare-fun name/835448125 (var1560) String)
(declare-fun fieldsData/835448125 (var1560) var773)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1560 var1560)
(declare-const null-var773 var773)
(declare-const var686 var1560) ; Statement: r1 := @this: org.apache.lucene.document.Field 
(assert (not (= var686 null-var1560)))
(define-const var3244 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3244)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3244!1 String)
(assert (= var3244!1 ""))
(define-const var1923 var191 (type/835448125 var686)) ; Statement: $r2 = r1.<org.apache.lucene.document.Field: org.apache.lucene.index.IndexableFieldType type> 
(assert true)
(define-const var2716 String (toString/-522406933 (cast-from-var191-to-var773 var1923))) ; Statement: $r3 = virtualinvoke $r2.<java.lang.Object: java.lang.String toString()>() 
(assert true)
;(assert (append/672562846 var3244!1 var2716)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var3244!2 String)
(assert (= var3244!2 (str.++ var3244!1 var2716)))
(assert true)
;(assert (append/-1166366385 var3244!2 60)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(60) 
(declare-const var3244!3 String)
(assert (str.prefixof var3244!2 var3244!3))
(define-const var3533 String (name/835448125 var686)) ; Statement: $r4 = r1.<org.apache.lucene.document.Field: java.lang.String name> 
(assert true)
;(assert (append/672562846 var3244!3 var3533)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var3244!4 String)
(assert (= var3244!4 (str.++ var3244!3 var3533)))
(assert true)
;(assert (append/-1166366385 var3244!4 58)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(58) 
(declare-const var3244!5 String)
(assert (str.prefixof var3244!4 var3244!5))
(define-const var780 var773 (fieldsData/835448125 var686)) ; Statement: $r5 = r1.<org.apache.lucene.document.Field: java.lang.Object fieldsData> 
 ; Statement: if $r5 == null goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(62) 
(assert (= var780 null-var773)) ; Cond: $r5 == null 
(assert true)
;(assert (append/-1166366385 var3244!5 62)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(62) 
(declare-const var3244!6 String)
(assert (str.prefixof var3244!5 var3244!6))
(assert true)
(define-const var18 String (toString/-2075883882 var3244!6)) ; Statement: $r6 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), type/835448125=([org.apache.lucene.document.Field], org.apache.lucene.index.IndexableFieldType), toString/-522406933=([java.lang.Object], java.lang.String), cast-from-var191-to-var773=([org.apache.lucene.index.IndexableFieldType], java.lang.Object), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), name/835448125=([org.apache.lucene.document.Field], java.lang.String), fieldsData/835448125=([org.apache.lucene.document.Field], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1560=org.apache.lucene.document.Field, var686=r1, var3244=$r0, var191=org.apache.lucene.index.IndexableFieldType, var1923=$r2, var773=java.lang.Object, var2716=$r3, var3533=$r4, var780=$r5, var18=$r6}
; {org.apache.lucene.document.Field=var1560, r1=var686, $r0=var3244, org.apache.lucene.index.IndexableFieldType=var191, $r2=var1923, java.lang.Object=var773, $r3=var2716, $r4=var3533, $r5=var780, $r6=var18}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.Object: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.lucene.document.Field;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = r1.<org.apache.lucene.document.Field: org.apache.lucene.index.IndexableFieldType type>;	$r3 = virtualinvoke $r2.<java.lang.Object: java.lang.String toString()>();	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(60);	$r4 = r1.<org.apache.lucene.document.Field: java.lang.String name>;	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(58);	$r5 = r1.<org.apache.lucene.document.Field: java.lang.Object fieldsData>;	if $r5 == null goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(62);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(62);	$r6 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r6
;block_num 2