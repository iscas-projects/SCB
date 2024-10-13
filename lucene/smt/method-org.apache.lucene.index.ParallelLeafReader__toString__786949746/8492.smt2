(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3212 0)
(declare-sort var606 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/-1061048412 ((s String)) String s)
(declare-fun completeReaderSet/156833114 (var3212) var606)
(declare-fun var606_iterator/1911472585 (var606) Iterator)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(declare-fun append/-1166366385 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3212 var3212)
(declare-const var3612 var3212) ; Statement: r1 := @this: org.apache.lucene.index.ParallelLeafReader 
(assert (not (= var3612 null-var3212)))
(define-const var3663 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/-1061048412 var3663 "ParallelLeafReader(")) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>(java.lang.String)>("ParallelLeafReader(") 
(declare-const var3663!1 String)
(assert (= var3663!1 "ParallelLeafReader("))
(define-const var3234 var606 (completeReaderSet/156833114 var3612)) ; Statement: $r2 = r1.<org.apache.lucene.index.ParallelLeafReader: java.util.Set completeReaderSet> 
(define-const var1772 Iterator (var606_iterator/1911472585 var3234)) ; Statement: r3 = interfaceinvoke $r2.<java.util.Set: java.util.Iterator iterator()>() 
(assert true) ; Non Conditional
(define-const var1730 Bool (Iterator_hasNext/-1669924200 var1772)) ; Statement: $z1 = interfaceinvoke r3.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z1 == 0 goto $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41) 
(assert (= (ite var1730 1 0) 0)) ; Cond: $z1 == 0 
(assert true)
(define-const var482 String (append/-1166366385 var3663!1 41)) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41) 
(declare-const var3663!2 String)
(assert (str.prefixof var3663!1 var3663!2))
(assert true)
(define-const var3449 String (toString/-2075883882 var482)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/-1061048412=([java.lang.StringBuilder, java.lang.String], void), completeReaderSet/156833114=([org.apache.lucene.index.ParallelLeafReader], java.util.Set), var606_iterator/1911472585=([java.util.Set], java.util.Iterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3212=org.apache.lucene.index.ParallelLeafReader, var3612=r1, var3663=$r0, var606=java.util.Set, var3234=$r2, var1772=r3, var1730=$z1, var482=$r4, var3449=$r5}
; {org.apache.lucene.index.ParallelLeafReader=var3212, r1=var3612, $r0=var3663, java.util.Set=var606, $r2=var3234, r3=var1772, $z1=var1730, $r4=var482, $r5=var3449}
;seq <java.lang.StringBuilder: void <init>(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.lucene.index.ParallelLeafReader;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>(java.lang.String)>("ParallelLeafReader(");	$r2 = r1.<org.apache.lucene.index.ParallelLeafReader: java.util.Set completeReaderSet>;	r3 = interfaceinvoke $r2.<java.util.Set: java.util.Iterator iterator()>();	$z1 = interfaceinvoke r3.<java.util.Iterator: boolean hasNext()>();	if $z1 == 0 goto $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41);	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	return $r5
;block_num 3