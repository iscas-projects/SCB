(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2858 0)
(declare-sort var3895 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun fields/1290435064 (var2858) var3895)
(declare-fun var3895_size/-959786421 (var3895) Int)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2858 var2858)
(declare-const var2953 var2858) ; Statement: r1 := @this: org.apache.lucene.document.Document 
(assert (not (= var2953 null-var2858)))
(define-const var1951 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1951)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1951!1 String)
(assert (= var1951!1 ""))
(assert true)
;(assert (append/672562846 var1951!1 "Document<")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Document<") 
(declare-const var1951!2 String)
(assert (= var1951!2 (str.++ var1951!1 "Document<")))
(define-const var2673 Int 0) ; Statement: i3 = 0 
(assert true) ; Non Conditional
(define-const var1471 var3895 (fields/1290435064 var2953)) ; Statement: $r2 = r1.<org.apache.lucene.document.Document: java.util.List fields> 
(define-const var1764 Int (var3895_size/-959786421 var1471)) ; Statement: $i0 = interfaceinvoke $r2.<java.util.List: int size()>() 
 ; Statement: if i3 >= $i0 goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(">") 
(assert (>= var2673 var1764)) ; Cond: i3 >= $i0 
(assert true)
;(assert (append/672562846 var1951!2 ">")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(">") 
(declare-const var1951!3 String)
(assert (= var1951!3 (str.++ var1951!2 ">")))
(assert true)
(define-const var1224 String (toString/-2075883882 var1951!3)) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), fields/1290435064=([org.apache.lucene.document.Document], java.util.List), var3895_size/-959786421=([java.util.List], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2858=org.apache.lucene.document.Document, var2953=r1, var1951=$r0, var2673=i3, var3895=java.util.List, var1471=$r2, var1764=$i0, var1224=$r3}
; {org.apache.lucene.document.Document=var2858, r1=var2953, $r0=var1951, i3=var2673, java.util.List=var3895, $r2=var1471, $i0=var1764, $r3=var1224}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.lucene.document.Document;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Document<");	i3 = 0;	$r2 = r1.<org.apache.lucene.document.Document: java.util.List fields>;	$i0 = interfaceinvoke $r2.<java.util.List: int size()>();	if i3 >= $i0 goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(">");	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(">");	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r3
;block_num 3