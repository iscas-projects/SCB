(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3280 0)
(declare-sort var114 0)
(declare-sort var3685 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/-1061048412 ((s String)) String s)
(declare-fun entrySet/-178644149 (var3280) var114)
(declare-fun iterator/-1027366913 (var114) var3685)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(declare-fun cast-from-var3685-to-Iterator (var3685) Iterator)
(declare-fun append/-1166366385 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3280 var3280)
(declare-const var1975 var3280) ; Statement: r1 := @this: org.apache.lucene.analysis.CharArrayMap 
(assert (not (= var1975 null-var3280)))
(define-const var956 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/-1061048412 var956 "{")) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>(java.lang.String)>("{") 
(declare-const var956!1 String)
(assert (= var956!1 "{"))
(assert true)
(define-const var294 var114 (entrySet/-178644149 var1975)) ; Statement: $r2 = virtualinvoke r1.<org.apache.lucene.analysis.CharArrayMap: org.apache.lucene.analysis.CharArrayMap$EntrySet entrySet()>() 
(assert true)
(define-const var1390 var3685 (iterator/-1027366913 var294)) ; Statement: r3 = virtualinvoke $r2.<org.apache.lucene.analysis.CharArrayMap$EntrySet: org.apache.lucene.analysis.CharArrayMap$EntryIterator iterator()>() 
(assert true) ; Non Conditional
(define-const var3976 Bool (Iterator_hasNext/-1669924200 (cast-from-var3685-to-Iterator var1390))) ; Statement: $z0 = interfaceinvoke r3.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 == 0 goto $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(125) 
(assert (= (ite var3976 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var1467 String (append/-1166366385 var956!1 125)) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(125) 
(declare-const var956!2 String)
(assert (str.prefixof var956!1 var956!2))
(assert true)
(define-const var3872 String (toString/-2075883882 var1467)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/-1061048412=([java.lang.StringBuilder, java.lang.String], void), entrySet/-178644149=([org.apache.lucene.analysis.CharArrayMap], org.apache.lucene.analysis.CharArrayMap$EntrySet), iterator/-1027366913=([org.apache.lucene.analysis.CharArrayMap$EntrySet], org.apache.lucene.analysis.CharArrayMap$EntryIterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), cast-from-var3685-to-Iterator=([org.apache.lucene.analysis.CharArrayMap$EntryIterator], java.util.Iterator), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3280=org.apache.lucene.analysis.CharArrayMap, var1975=r1, var956=$r0, var114=org.apache.lucene.analysis.CharArrayMap$EntrySet, var294=$r2, var3685=org.apache.lucene.analysis.CharArrayMap$EntryIterator, var1390=r3, var3976=$z0, var1467=$r4, var3872=$r5}
; {org.apache.lucene.analysis.CharArrayMap=var3280, r1=var1975, $r0=var956, org.apache.lucene.analysis.CharArrayMap$EntrySet=var114, $r2=var294, org.apache.lucene.analysis.CharArrayMap$EntryIterator=var3685, r3=var1390, $z0=var3976, $r4=var1467, $r5=var3872}
;seq <java.lang.StringBuilder: void <init>(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.lucene.analysis.CharArrayMap;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>(java.lang.String)>("{");	$r2 = virtualinvoke r1.<org.apache.lucene.analysis.CharArrayMap: org.apache.lucene.analysis.CharArrayMap$EntrySet entrySet()>();	r3 = virtualinvoke $r2.<org.apache.lucene.analysis.CharArrayMap$EntrySet: org.apache.lucene.analysis.CharArrayMap$EntryIterator iterator()>();	$z0 = interfaceinvoke r3.<java.util.Iterator: boolean hasNext()>();	if $z0 == 0 goto $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(125);	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(125);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	return $r5
;block_num 3