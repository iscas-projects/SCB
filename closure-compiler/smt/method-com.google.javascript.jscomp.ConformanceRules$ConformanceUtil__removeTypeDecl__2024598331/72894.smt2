(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1414 0)
(declare-sort var2155 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun indexOf/-1037706067 ((s String) (c Int)) Int (str.indexof s (str.from_code c) 0))
(declare-fun var2155-init () var2155)
(declare-fun <init>/67088071 (var2155 String) void)
(declare-const null-String String)
(declare-const var2235 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2235 null-String)))
(assert true)
(define-const var1956 Int (indexOf/-1037706067 var2235 58)) ; Statement: i0 = virtualinvoke r0.<java.lang.String: int indexOf(int)>(58) 
 ; Statement: if i0 >= 1 goto $r1 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int,int)>(0, i0) 
(assert (not (>= var1956 1))) ; Negate: Cond: i0 >= 1  
(define-const var1207 var2155 var2155-init) ; Statement: $r2 = new com.google.javascript.jscomp.CheckConformance$InvalidRequirementSpec 
(assert true)
;(assert (<init>/67088071 var1207 "value should be in the form NAME:TYPE")) ; Statement: specialinvoke $r2.<com.google.javascript.jscomp.CheckConformance$InvalidRequirementSpec: void <init>(java.lang.String)>("value should be in the form NAME:TYPE") 

(declare-const var1207!1 var2155)
(declare-const var399 String)
 ; Statement: throw $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {indexOf/-1037706067=([java.lang.String, int], int), var2155-init=([], com.google.javascript.jscomp.CheckConformance$InvalidRequirementSpec), <init>/67088071=([com.google.javascript.jscomp.CheckConformance$InvalidRequirementSpec, java.lang.String], void)}
; {var2235=r0, var1414=null_type, var1956=i0, var2155=com.google.javascript.jscomp.CheckConformance$InvalidRequirementSpec, var1207=$r2, var399="value should be in the form NAME:TYPE"}
; {r0=var2235, null_type=var1414, i0=var1956, com.google.javascript.jscomp.CheckConformance$InvalidRequirementSpec=var2155, $r2=var1207, "value should be in the form NAME:TYPE"=var399}
;seq <java.lang.String: int indexOf(int)>
;cnt {"<java.lang.String: int indexOf(int)>": 1}
;stmts r0 := @parameter0: java.lang.String;	i0 = virtualinvoke r0.<java.lang.String: int indexOf(int)>(58);	if i0 >= 1 goto $r1 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int,int)>(0, i0);	$r2 = new com.google.javascript.jscomp.CheckConformance$InvalidRequirementSpec;	specialinvoke $r2.<com.google.javascript.jscomp.CheckConformance$InvalidRequirementSpec: void <init>(java.lang.String)>("value should be in the form NAME:TYPE");	throw $r2
;block_num 2