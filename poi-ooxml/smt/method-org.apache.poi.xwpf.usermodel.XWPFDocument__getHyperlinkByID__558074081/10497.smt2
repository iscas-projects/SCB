(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3914 0)
(declare-sort var1564 0)
(declare-sort var2398 0)
(declare-sort var131 0)
(declare-sort var2049 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun hyperlinks/150765567 (var3914) var2398)
(declare-fun var2398_iterator/-912451715 (var2398) Iterator)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(declare-fun Iterator_next/-1124697587 (Iterator) var131)
(declare-fun cast-from-var131-to-var2049 (var131) var2049)
(declare-fun getId/170910107 (var2049) String)
(declare-const null-var3914 var3914)
(declare-const null-String String)
(declare-const var465 var3914) ; Statement: r0 := @this: org.apache.poi.xwpf.usermodel.XWPFDocument 
(assert (not (= var465 null-var3914)))
(declare-const var369 String) ; Statement: r4 := @parameter0: java.lang.String 
(assert (not (= var369 null-String)))
(define-const var2728 var2398 (hyperlinks/150765567 var465)) ; Statement: $r1 = r0.<org.apache.poi.xwpf.usermodel.XWPFDocument: java.util.List hyperlinks> 
(define-const var883 Iterator (var2398_iterator/-912451715 var2728)) ; Statement: r8 = interfaceinvoke $r1.<java.util.List: java.util.Iterator iterator()>() 
(assert true) ; Non Conditional
(define-const var951 Bool (Iterator_hasNext/-1669924200 var883)) ; Statement: $z0 = interfaceinvoke r8.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 == 0 goto specialinvoke r0.<org.apache.poi.xwpf.usermodel.XWPFDocument: void initHyperlinks()>() 
(assert (not (= (ite var951 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var2257 var131 (Iterator_next/-1124697587 var883)) ; Statement: $r6 = interfaceinvoke r8.<java.util.Iterator: java.lang.Object next()>() 
(declare-const var883!1 Iterator)
(define-const var2556 var2049 (cast-from-var131-to-var2049 var2257)) ; Statement: r9 = (org.apache.poi.xwpf.usermodel.XWPFHyperlink) $r6 
(assert true)
(define-const var1241 String (getId/170910107 var2556)) ; Statement: $r7 = virtualinvoke r9.<org.apache.poi.xwpf.usermodel.XWPFHyperlink: java.lang.String getId()>() 
(assert true)
(define-const var1968 Bool (= var1241 var369)) ; Statement: $z3 = virtualinvoke $r7.<java.lang.String: boolean equals(java.lang.Object)>(r4) 
 ; Statement: if $z3 == 0 goto (branch) 
(assert (not (= (ite var1968 1 0) 0))) ; Negate: Cond: $z3 == 0  
 ; Statement: return r9 
(check-sat)
(get-model)
(get-unsat-core)
; {hyperlinks/150765567=([org.apache.poi.xwpf.usermodel.XWPFDocument], java.util.List), var2398_iterator/-912451715=([java.util.List], java.util.Iterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), Iterator_next/-1124697587=([java.util.Iterator], java.lang.Object), cast-from-var131-to-var2049=([java.lang.Object], org.apache.poi.xwpf.usermodel.XWPFHyperlink), getId/170910107=([org.apache.poi.xwpf.usermodel.XWPFHyperlink], java.lang.String)}
; {var3914=org.apache.poi.xwpf.usermodel.XWPFDocument, var465=r0, var369=r4, var1564=null_type, var2398=java.util.List, var2728=$r1, var883=r8, var951=$z0, var131=java.lang.Object, var2257=$r6, var2049=org.apache.poi.xwpf.usermodel.XWPFHyperlink, var2556=r9, var1241=$r7, var1968=$z3}
; {org.apache.poi.xwpf.usermodel.XWPFDocument=var3914, r0=var465, r4=var369, null_type=var1564, java.util.List=var2398, $r1=var2728, r8=var883, $z0=var951, java.lang.Object=var131, $r6=var2257, org.apache.poi.xwpf.usermodel.XWPFHyperlink=var2049, r9=var2556, $r7=var1241, $z3=var1968}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @this: org.apache.poi.xwpf.usermodel.XWPFDocument;	r4 := @parameter0: java.lang.String;	$r1 = r0.<org.apache.poi.xwpf.usermodel.XWPFDocument: java.util.List hyperlinks>;	r8 = interfaceinvoke $r1.<java.util.List: java.util.Iterator iterator()>();	$z0 = interfaceinvoke r8.<java.util.Iterator: boolean hasNext()>();	if $z0 == 0 goto specialinvoke r0.<org.apache.poi.xwpf.usermodel.XWPFDocument: void initHyperlinks()>();	$r6 = interfaceinvoke r8.<java.util.Iterator: java.lang.Object next()>();	r9 = (org.apache.poi.xwpf.usermodel.XWPFHyperlink) $r6;	$r7 = virtualinvoke r9.<org.apache.poi.xwpf.usermodel.XWPFHyperlink: java.lang.String getId()>();	$z3 = virtualinvoke $r7.<java.lang.String: boolean equals(java.lang.Object)>(r4);	if $z3 == 0 goto (branch);	return r9
;block_num 4