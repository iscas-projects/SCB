(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2772 0)
(declare-sort var2109 0)
(declare-sort var3024 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/-1061048412 ((s String)) String s)
(declare-fun in/-1773060597 (var2772) var2109)
(declare-fun append/-1031950772 (String var3024) String)
(declare-fun cast-from-var2109-to-var3024 (var2109) var3024)
(declare-fun append/-1166366385 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2772 var2772)
(declare-const var3570 var2772) ; Statement: r1 := @this: org.apache.lucene.index.FilterLeafReader 
(assert (not (= var3570 null-var2772)))
(define-const var444 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/-1061048412 var444 "FilterLeafReader(")) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>(java.lang.String)>("FilterLeafReader(") 
(declare-const var444!1 String)
(assert (= var444!1 "FilterLeafReader("))
(define-const var3455 var2109 (in/-1773060597 var3570)) ; Statement: $r2 = r1.<org.apache.lucene.index.FilterLeafReader: org.apache.lucene.index.LeafReader in> 
(assert true)
;(assert (append/-1031950772 var444!1 (cast-from-var2109-to-var3024 var3455))) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2) 
(declare-const var444!2 String)
(assert (str.prefixof var444!1 var444!2))
(assert true)
;(assert (append/-1166366385 var444!2 41)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41) 
(declare-const var444!3 String)
(assert (str.prefixof var444!2 var444!3))
(assert true)
(define-const var1967 String (toString/-2075883882 var444!3)) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/-1061048412=([java.lang.StringBuilder, java.lang.String], void), in/-1773060597=([org.apache.lucene.index.FilterLeafReader], org.apache.lucene.index.LeafReader), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var2109-to-var3024=([org.apache.lucene.index.LeafReader], java.lang.Object), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2772=org.apache.lucene.index.FilterLeafReader, var3570=r1, var444=$r0, var2109=org.apache.lucene.index.LeafReader, var3455=$r2, var3024=java.lang.Object, var1967=$r3}
; {org.apache.lucene.index.FilterLeafReader=var2772, r1=var3570, $r0=var444, org.apache.lucene.index.LeafReader=var2109, $r2=var3455, java.lang.Object=var3024, $r3=var1967}
;seq <java.lang.StringBuilder: void <init>(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.lucene.index.FilterLeafReader;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>(java.lang.String)>("FilterLeafReader(");	$r2 = r1.<org.apache.lucene.index.FilterLeafReader: org.apache.lucene.index.LeafReader in>;	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41);	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r3
;block_num 1