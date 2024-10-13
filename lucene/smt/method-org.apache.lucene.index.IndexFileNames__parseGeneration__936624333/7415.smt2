(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2102 0)
(declare-sort var3645 0)
(declare-sort var2249 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(declare-fun var2249-init () var2249)
(declare-fun <init>/-208190597 (var2249) void)
(declare-const null-String String)
(declare-const var3645-$assertionsDisabled Bool)
(declare-const var2831 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2831 null-String)))
(define-const var2207 Bool var3645-$assertionsDisabled) ; Statement: $z0 = <org.apache.lucene.index.IndexFileNames: boolean $assertionsDisabled> 
 ; Statement: if $z0 != 0 goto $r1 = staticinvoke <org.apache.lucene.index.IndexFileNames: java.lang.String stripExtension(java.lang.String)>(r0) 
(assert (not (not (= (ite var2207 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(assert true)
(define-const var1091 Bool (startsWith/-1785782452 var2831 "_")) ; Statement: $z1 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>("_") 
 ; Statement: if $z1 != 0 goto $r1 = staticinvoke <org.apache.lucene.index.IndexFileNames: java.lang.String stripExtension(java.lang.String)>(r0) 
(assert (not (not (= (ite var1091 1 0) 0)))) ; Negate: Cond: $z1 != 0  
(define-const var918 var2249 var2249-init) ; Statement: $r5 = new java.lang.AssertionError 
(assert true)
;(assert (<init>/-208190597 var918)) ; Statement: specialinvoke $r5.<java.lang.AssertionError: void <init>()>() 

(declare-const var918!1 var2249)
 ; Statement: throw $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {startsWith/-1785782452=([java.lang.String, java.lang.String], boolean), var2249-init=([], java.lang.AssertionError), <init>/-208190597=([java.lang.AssertionError], void)}
; {var2831=r0, var2102=null_type, var3645=org.apache.lucene.index.IndexFileNames, var2207=$z0, var1091=$z1, var2249=java.lang.AssertionError, var918=$r5}
; {r0=var2831, null_type=var2102, org.apache.lucene.index.IndexFileNames=var3645, $z0=var2207, $z1=var1091, java.lang.AssertionError=var2249, $r5=var918}
;seq <java.lang.String: boolean startsWith(java.lang.String)>
;cnt {"<java.lang.String: boolean startsWith(java.lang.String)>": 1}
;stmts r0 := @parameter0: java.lang.String;	$z0 = <org.apache.lucene.index.IndexFileNames: boolean $assertionsDisabled>;	if $z0 != 0 goto $r1 = staticinvoke <org.apache.lucene.index.IndexFileNames: java.lang.String stripExtension(java.lang.String)>(r0);	$z1 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>("_");	if $z1 != 0 goto $r1 = staticinvoke <org.apache.lucene.index.IndexFileNames: java.lang.String stripExtension(java.lang.String)>(r0);	$r5 = new java.lang.AssertionError;	specialinvoke $r5.<java.lang.AssertionError: void <init>()>();	throw $r5
;block_num 3