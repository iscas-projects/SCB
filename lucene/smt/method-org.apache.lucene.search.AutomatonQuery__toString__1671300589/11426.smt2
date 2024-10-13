(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2403 0)
(declare-sort var3394 0)
(declare-sort var353 0)
(declare-sort var274 0)
(declare-sort var2089 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun term/-1041554136 (var2403) var353)
(declare-fun field/-597557634 (var353) String)
(declare-fun getClass/1258963082 (var274) ClassObject)
(declare-fun cast-from-var2403-to-var274 (var2403) var274)
(declare-fun getSimpleName/-390194377 (ClassObject) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1166366385 (String Int) String)
(declare-fun automaton/-1041554136 (var2403) var2089)
(declare-fun toString/-522406933 (var274) String)
(declare-fun cast-from-var2089-to-var274 (var2089) var274)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2403 var2403)
(declare-const null-String String)
(declare-const var3952 var2403) ; Statement: r1 := @this: org.apache.lucene.search.AutomatonQuery 
(assert (not (= var3952 null-var2403)))
(declare-const var1543 String) ; Statement: r3 := @parameter0: java.lang.String 
(assert (not (= var1543 null-String)))
(define-const var266 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var266)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var266!1 String)
(assert (= var266!1 ""))
(define-const var2082 var353 (term/-1041554136 var3952)) ; Statement: $r2 = r1.<org.apache.lucene.search.AutomatonQuery: org.apache.lucene.index.Term term> 
(assert true)
(define-const var1100 String (field/-597557634 var2082)) ; Statement: $r4 = virtualinvoke $r2.<org.apache.lucene.index.Term: java.lang.String field()>() 
(assert true)
(define-const var654 Bool (= var1100 var1543)) ; Statement: $z0 = virtualinvoke $r4.<java.lang.String: boolean equals(java.lang.Object)>(r3) 
 ; Statement: if $z0 != 0 goto $r5 = virtualinvoke r1.<java.lang.Object: java.lang.Class getClass()>() 
(assert (not (= (ite var654 1 0) 0))) ; Cond: $z0 != 0 
(assert true)
(define-const var2679 ClassObject (getClass/1258963082 (cast-from-var2403-to-var274 var3952))) ; Statement: $r5 = virtualinvoke r1.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var1345 String (getSimpleName/-390194377 var2679)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.Class: java.lang.String getSimpleName()>() 
(assert true)
;(assert (append/672562846 var266!1 var1345)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6) 
(declare-const var266!2 String)
(assert (= var266!2 (str.++ var266!1 var1345)))
(assert true)
;(assert (append/672562846 var266!2 " {")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" {") 
(declare-const var266!3 String)
(assert (= var266!3 (str.++ var266!2 " {")))
(assert true)
;(assert (append/-1166366385 var266!3 10)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(10) 
(declare-const var266!4 String)
(assert (str.prefixof var266!3 var266!4))
(define-const var3179 var2089 (automaton/-1041554136 var3952)) ; Statement: $r7 = r1.<org.apache.lucene.search.AutomatonQuery: org.apache.lucene.util.automaton.Automaton automaton> 
(assert true)
(define-const var3473 String (toString/-522406933 (cast-from-var2089-to-var274 var3179))) ; Statement: $r8 = virtualinvoke $r7.<java.lang.Object: java.lang.String toString()>() 
(assert true)
;(assert (append/672562846 var266!4 var3473)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8) 
(declare-const var266!5 String)
(assert (= var266!5 (str.++ var266!4 var3473)))
(assert true)
;(assert (append/672562846 var266!5 "}")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("}") 
(declare-const var266!6 String)
(assert (= var266!6 (str.++ var266!5 "}")))
(assert true)
(define-const var338 String (toString/-2075883882 var266!6)) ; Statement: $r9 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), term/-1041554136=([org.apache.lucene.search.AutomatonQuery], org.apache.lucene.index.Term), field/-597557634=([org.apache.lucene.index.Term], java.lang.String), getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var2403-to-var274=([org.apache.lucene.search.AutomatonQuery], java.lang.Object), getSimpleName/-390194377=([java.lang.Class], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), automaton/-1041554136=([org.apache.lucene.search.AutomatonQuery], org.apache.lucene.util.automaton.Automaton), toString/-522406933=([java.lang.Object], java.lang.String), cast-from-var2089-to-var274=([org.apache.lucene.util.automaton.Automaton], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2403=org.apache.lucene.search.AutomatonQuery, var3952=r1, var1543=r3, var3394=null_type, var266=$r0, var353=org.apache.lucene.index.Term, var2082=$r2, var1100=$r4, var654=$z0, var274=java.lang.Object, var2679=$r5, var1345=$r6, var2089=org.apache.lucene.util.automaton.Automaton, var3179=$r7, var3473=$r8, var338=$r9}
; {org.apache.lucene.search.AutomatonQuery=var2403, r1=var3952, r3=var1543, null_type=var3394, $r0=var266, org.apache.lucene.index.Term=var353, $r2=var2082, $r4=var1100, $z0=var654, java.lang.Object=var274, $r5=var2679, $r6=var1345, org.apache.lucene.util.automaton.Automaton=var2089, $r7=var3179, $r8=var3473, $r9=var338}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.Object: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.String: boolean equals(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.lucene.search.AutomatonQuery;	r3 := @parameter0: java.lang.String;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = r1.<org.apache.lucene.search.AutomatonQuery: org.apache.lucene.index.Term term>;	$r4 = virtualinvoke $r2.<org.apache.lucene.index.Term: java.lang.String field()>();	$z0 = virtualinvoke $r4.<java.lang.String: boolean equals(java.lang.Object)>(r3);	if $z0 != 0 goto $r5 = virtualinvoke r1.<java.lang.Object: java.lang.Class getClass()>();	$r5 = virtualinvoke r1.<java.lang.Object: java.lang.Class getClass()>();	$r6 = virtualinvoke $r5.<java.lang.Class: java.lang.String getSimpleName()>();	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" {");	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(10);	$r7 = r1.<org.apache.lucene.search.AutomatonQuery: org.apache.lucene.util.automaton.Automaton automaton>;	$r8 = virtualinvoke $r7.<java.lang.Object: java.lang.String toString()>();	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("}");	$r9 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r9
;block_num 2