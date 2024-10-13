(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1829 0)
(declare-sort var2094 0)
(declare-sort var1057 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getClass/1258963082 (var2094) ClassObject)
(declare-fun cast-from-var1829-to-var2094 (var1829) var2094)
(declare-fun append/-1166366385 (String Int) String)
(declare-fun getSequentialSubReaders/226929752 (var1829) var1057)
(declare-fun var1057_isEmpty/-153543822 (var1057) Bool)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1829 var1829)
(declare-const null-ClassObject ClassObject)
(declare-const var1829-$assertionsDisabled Bool)
(declare-const var965 var1829) ; Statement: r1 := @this: org.apache.lucene.index.CompositeReader 
(assert (not (= var965 null-var1829)))
(define-const var1289 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1289)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1289!1 String)
(assert (= var1289!1 ""))
(assert true)
(define-const var3548 ClassObject (getClass/1258963082 (cast-from-var1829-to-var2094 var965))) ; Statement: r9 = virtualinvoke r1.<java.lang.Object: java.lang.Class getClass()>() 
(assert true) ; Non Conditional
 ; Statement: if r9 == null goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(40) 
(assert (= var3548 null-ClassObject)) ; Cond: r9 == null 
(assert true)
;(assert (append/-1166366385 var1289!1 40)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(40) 
(declare-const var1289!2 String)
(assert (str.prefixof var1289!1 var1289!2))
(assert true)
(define-const var1598 var1057 (getSequentialSubReaders/226929752 var965)) ; Statement: $r8 = virtualinvoke r1.<org.apache.lucene.index.CompositeReader: java.util.List getSequentialSubReaders()>() 
(define-const var1167 Bool var1829-$assertionsDisabled) ; Statement: $z0 = <org.apache.lucene.index.CompositeReader: boolean $assertionsDisabled> 
 ; Statement: if $z0 != 0 goto $z1 = interfaceinvoke $r8.<java.util.List: boolean isEmpty()>() 
(assert (not (= (ite var1167 1 0) 0))) ; Cond: $z0 != 0 
(define-const var2868 Bool (var1057_isEmpty/-153543822 var1598)) ; Statement: $z1 = interfaceinvoke $r8.<java.util.List: boolean isEmpty()>() 
 ; Statement: if $z1 != 0 goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41) 
(assert (not (= (ite var2868 1 0) 0))) ; Cond: $z1 != 0 
(assert true)
;(assert (append/-1166366385 var1289!2 41)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41) 
(declare-const var1289!3 String)
(assert (str.prefixof var1289!2 var1289!3))
(assert true)
(define-const var2766 String (toString/-2075883882 var1289!3)) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var1829-to-var2094=([org.apache.lucene.index.CompositeReader], java.lang.Object), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), getSequentialSubReaders/226929752=([org.apache.lucene.index.CompositeReader], java.util.List), var1057_isEmpty/-153543822=([java.util.List], boolean), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1829=org.apache.lucene.index.CompositeReader, var965=r1, var1289=$r0, var2094=java.lang.Object, var3548=r9, var1057=java.util.List, var1598=$r8, var1167=$z0, var2868=$z1, var2766=$r2}
; {org.apache.lucene.index.CompositeReader=var1829, r1=var965, $r0=var1289, java.lang.Object=var2094, r9=var3548, java.util.List=var1057, $r8=var1598, $z0=var1167, $z1=var2868, $r2=var2766}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.lucene.index.CompositeReader;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	r9 = virtualinvoke r1.<java.lang.Object: java.lang.Class getClass()>();	if r9 == null goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(40);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(40);	$r8 = virtualinvoke r1.<org.apache.lucene.index.CompositeReader: java.util.List getSequentialSubReaders()>();	$z0 = <org.apache.lucene.index.CompositeReader: boolean $assertionsDisabled>;	if $z0 != 0 goto $z1 = interfaceinvoke $r8.<java.util.List: boolean isEmpty()>();	$z1 = interfaceinvoke $r8.<java.util.List: boolean isEmpty()>();	if $z1 != 0 goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41);	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r2
;block_num 5