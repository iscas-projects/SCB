(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2536 0)
(declare-sort var1910 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun name/-1259444625 (var2536) var1910)
(declare-fun var1910_getRefersTo/-1357816639 (var1910) String)
(define-fun substring/850833817 ((s String) (begin Int)) String (str.substr s begin (- (str.len s) begin)))
(declare-const null-var2536 var2536)
(declare-const var73 var2536) ; Statement: r0 := @this: org.apache.poi.xssf.model.ExternalLinksTable$ExternalName 
(assert (not (= var73 null-var2536)))
(define-const var3195 var1910 (name/-1259444625 var73)) ; Statement: $r1 = r0.<org.apache.poi.xssf.model.ExternalLinksTable$ExternalName: org.openxmlformats.schemas.spreadsheetml.x2006.main.CTExternalDefinedName name> 
(define-const var312 String (var1910_getRefersTo/-1357816639 var3195)) ; Statement: $r2 = interfaceinvoke $r1.<org.openxmlformats.schemas.spreadsheetml.x2006.main.CTExternalDefinedName: java.lang.String getRefersTo()>() 
(assert (and true (and (>= 1 0) (>= (str.len var312) 1))))
(define-const var996 String (substring/850833817 var312 1)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.String: java.lang.String substring(int)>(1) 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {name/-1259444625=([org.apache.poi.xssf.model.ExternalLinksTable$ExternalName], org.openxmlformats.schemas.spreadsheetml.x2006.main.CTExternalDefinedName), var1910_getRefersTo/-1357816639=([org.openxmlformats.schemas.spreadsheetml.x2006.main.CTExternalDefinedName], java.lang.String), substring/850833817=([java.lang.String, int], java.lang.String)}
; {var2536=org.apache.poi.xssf.model.ExternalLinksTable$ExternalName, var73=r0, var1910=org.openxmlformats.schemas.spreadsheetml.x2006.main.CTExternalDefinedName, var3195=$r1, var312=$r2, var996=$r3}
; {org.apache.poi.xssf.model.ExternalLinksTable$ExternalName=var2536, r0=var73, org.openxmlformats.schemas.spreadsheetml.x2006.main.CTExternalDefinedName=var1910, $r1=var3195, $r2=var312, $r3=var996}
;seq <java.lang.String: java.lang.String substring(int)>
;cnt {"<java.lang.String: java.lang.String substring(int)>": 1}
;stmts r0 := @this: org.apache.poi.xssf.model.ExternalLinksTable$ExternalName;	$r1 = r0.<org.apache.poi.xssf.model.ExternalLinksTable$ExternalName: org.openxmlformats.schemas.spreadsheetml.x2006.main.CTExternalDefinedName name>;	$r2 = interfaceinvoke $r1.<org.openxmlformats.schemas.spreadsheetml.x2006.main.CTExternalDefinedName: java.lang.String getRefersTo()>();	$r3 = virtualinvoke $r2.<java.lang.String: java.lang.String substring(int)>(1);	return $r3
;block_num 1