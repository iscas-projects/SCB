(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3083 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/-1061048412 ((s String)) String s)
(declare-fun iterator/-1499533022 (var3083) Iterator)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(declare-fun append/-1166366385 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3083 var3083)
(declare-const var1310 var3083) ; Statement: r1 := @this: org.apache.lucene.analysis.CharArraySet 
(assert (not (= var1310 null-var3083)))
(define-const var3222 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/-1061048412 var3222 "[")) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>(java.lang.String)>("[") 
(declare-const var3222!1 String)
(assert (= var3222!1 "["))
(assert true)
(define-const var347 Iterator (iterator/-1499533022 var1310)) ; Statement: r2 = virtualinvoke r1.<org.apache.lucene.analysis.CharArraySet: java.util.Iterator iterator()>() 
(assert true) ; Non Conditional
(define-const var109 Bool (Iterator_hasNext/-1669924200 var347)) ; Statement: $z0 = interfaceinvoke r2.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 == 0 goto $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(93) 
(assert (= (ite var109 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var3696 String (append/-1166366385 var3222!1 93)) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(93) 
(declare-const var3222!2 String)
(assert (str.prefixof var3222!1 var3222!2))
(assert true)
(define-const var1052 String (toString/-2075883882 var3696)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/-1061048412=([java.lang.StringBuilder, java.lang.String], void), iterator/-1499533022=([org.apache.lucene.analysis.CharArraySet], java.util.Iterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3083=org.apache.lucene.analysis.CharArraySet, var1310=r1, var3222=$r0, var347=r2, var109=$z0, var3696=$r3, var1052=$r4}
; {org.apache.lucene.analysis.CharArraySet=var3083, r1=var1310, $r0=var3222, r2=var347, $z0=var109, $r3=var3696, $r4=var1052}
;seq <java.lang.StringBuilder: void <init>(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.lucene.analysis.CharArraySet;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>(java.lang.String)>("[");	r2 = virtualinvoke r1.<org.apache.lucene.analysis.CharArraySet: java.util.Iterator iterator()>();	$z0 = interfaceinvoke r2.<java.util.Iterator: boolean hasNext()>();	if $z0 == 0 goto $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(93);	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(93);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>();	return $r4
;block_num 3