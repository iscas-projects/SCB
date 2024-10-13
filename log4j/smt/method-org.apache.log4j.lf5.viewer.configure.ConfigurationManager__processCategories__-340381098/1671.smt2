(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1243 0)
(declare-sort var3599 0)
(declare-sort var132 0)
(declare-sort var3271 0)
(declare-sort var1822 0)
(declare-sort var2272 0)
(declare-sort var693 0)
(declare-sort var1226 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun _monitor/-683316386 (var1243) var132)
(declare-fun getCategoryExplorerTree/-1244232547 (var132) var3271)
(declare-fun getExplorerModel/-1532595494 (var3271) var1822)
(declare-fun var3599_getElementsByTagName/-1404320328 (var3599 String) var2272)
(declare-fun var2272_item/-99689391 (var2272 Int) var693)
(declare-fun var693_getAttributes/1383780881 (var693) var1226)
(declare-fun getValue/-1790866410 (var1243 var1226 String) String)
(define-fun equalsIgnoreCase/-92311102 ((this String) (another String)) Bool (let ((upper_this (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all this "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z")) (upper_another (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all another "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z"))) (= upper_this upper_another)))
(declare-fun var2272_getLength/224812497 (var2272) Int)
(declare-const null-var1243 var1243)
(declare-const null-var3599 var3599)
(declare-const var3550 var1243) ; Statement: r0 := @this: org.apache.log4j.lf5.viewer.configure.ConfigurationManager 
(assert (not (= var3550 null-var1243)))
(declare-const var3972 var3599) ; Statement: r4 := @parameter0: org.w3c.dom.Document 
(assert (not (= var3972 null-var3599)))
(define-const var2836 var132 (_monitor/-683316386 var3550)) ; Statement: $r1 = r0.<org.apache.log4j.lf5.viewer.configure.ConfigurationManager: org.apache.log4j.lf5.viewer.LogBrokerMonitor _monitor> 
(assert true)
(define-const var3719 var3271 (getCategoryExplorerTree/-1244232547 var2836)) ; Statement: r2 = virtualinvoke $r1.<org.apache.log4j.lf5.viewer.LogBrokerMonitor: org.apache.log4j.lf5.viewer.categoryexplorer.CategoryExplorerTree getCategoryExplorerTree()>() 
(assert true)
(define-const var107 var1822 (getExplorerModel/-1532595494 var3719)) ; Statement: r3 = virtualinvoke r2.<org.apache.log4j.lf5.viewer.categoryexplorer.CategoryExplorerTree: org.apache.log4j.lf5.viewer.categoryexplorer.CategoryExplorerModel getExplorerModel()>() 
(define-const var645 var2272 (var3599_getElementsByTagName/-1404320328 var3972 "category")) ; Statement: r5 = interfaceinvoke r4.<org.w3c.dom.Document: org.w3c.dom.NodeList getElementsByTagName(java.lang.String)>("category") 
(define-const var1555 var693 (var2272_item/-99689391 var645 0)) ; Statement: $r6 = interfaceinvoke r5.<org.w3c.dom.NodeList: org.w3c.dom.Node item(int)>(0) 
(define-const var3737 var1226 (var693_getAttributes/1383780881 var1555)) ; Statement: r15 = interfaceinvoke $r6.<org.w3c.dom.Node: org.w3c.dom.NamedNodeMap getAttributes()>() 
(assert true)
(define-const var3801 String (getValue/-1790866410 var3550 var3737 "name")) ; Statement: $r7 = virtualinvoke r0.<org.apache.log4j.lf5.viewer.configure.ConfigurationManager: java.lang.String getValue(org.w3c.dom.NamedNodeMap,java.lang.String)>(r15, "name") 
(assert true)
(define-const var3419 Bool (equalsIgnoreCase/-92311102 var3801 "Categories")) ; Statement: $z0 = virtualinvoke $r7.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>("Categories") 
 ; Statement: if $z0 == 0 goto $z4 = 0 
(assert (= (ite var3419 1 0) 0)) ; Cond: $z0 == 0 
(define-const var1977 Bool (ite (= 1 0) true false)) ; Statement: $z4 = 0 
(assert true) ; Non Conditional
(define-const var28 Bool var1977) ; Statement: z1 = $z4 
(define-const var3283 Int (var2272_getLength/224812497 var645)) ; Statement: $i0 = interfaceinvoke r5.<org.w3c.dom.NodeList: int getLength()>() 
(define-const var622 Int (- var3283 1)) ; Statement: i1 = $i0 - 1 
(assert true) ; Non Conditional
 ; Statement: if i1 < z1 goto return 
(assert (< var622 (ite var28 1 0))) ; Cond: i1 < z1 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {_monitor/-683316386=([org.apache.log4j.lf5.viewer.configure.ConfigurationManager], org.apache.log4j.lf5.viewer.LogBrokerMonitor), getCategoryExplorerTree/-1244232547=([org.apache.log4j.lf5.viewer.LogBrokerMonitor], org.apache.log4j.lf5.viewer.categoryexplorer.CategoryExplorerTree), getExplorerModel/-1532595494=([org.apache.log4j.lf5.viewer.categoryexplorer.CategoryExplorerTree], org.apache.log4j.lf5.viewer.categoryexplorer.CategoryExplorerModel), var3599_getElementsByTagName/-1404320328=([org.w3c.dom.Document, java.lang.String], org.w3c.dom.NodeList), var2272_item/-99689391=([org.w3c.dom.NodeList, int], org.w3c.dom.Node), var693_getAttributes/1383780881=([org.w3c.dom.Node], org.w3c.dom.NamedNodeMap), getValue/-1790866410=([org.apache.log4j.lf5.viewer.configure.ConfigurationManager, org.w3c.dom.NamedNodeMap, java.lang.String], java.lang.String), equalsIgnoreCase/-92311102=([java.lang.String, java.lang.String], boolean), var2272_getLength/224812497=([org.w3c.dom.NodeList], int)}
; {var1243=org.apache.log4j.lf5.viewer.configure.ConfigurationManager, var3550=r0, var3599=org.w3c.dom.Document, var3972=r4, var132=org.apache.log4j.lf5.viewer.LogBrokerMonitor, var2836=$r1, var3271=org.apache.log4j.lf5.viewer.categoryexplorer.CategoryExplorerTree, var3719=r2, var1822=org.apache.log4j.lf5.viewer.categoryexplorer.CategoryExplorerModel, var107=r3, var2272=org.w3c.dom.NodeList, var645=r5, var693=org.w3c.dom.Node, var1555=$r6, var1226=org.w3c.dom.NamedNodeMap, var3737=r15, var3801=$r7, var3419=$z0, var1977=$z4, var28=z1, var3283=$i0, var622=i1}
; {org.apache.log4j.lf5.viewer.configure.ConfigurationManager=var1243, r0=var3550, org.w3c.dom.Document=var3599, r4=var3972, org.apache.log4j.lf5.viewer.LogBrokerMonitor=var132, $r1=var2836, org.apache.log4j.lf5.viewer.categoryexplorer.CategoryExplorerTree=var3271, r2=var3719, org.apache.log4j.lf5.viewer.categoryexplorer.CategoryExplorerModel=var1822, r3=var107, org.w3c.dom.NodeList=var2272, r5=var645, org.w3c.dom.Node=var693, $r6=var1555, org.w3c.dom.NamedNodeMap=var1226, r15=var3737, $r7=var3801, $z0=var3419, $z4=var1977, z1=var28, $i0=var3283, i1=var622}
;seq <java.lang.String: boolean equalsIgnoreCase(java.lang.String)>
;cnt {"<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>": 1}
;stmts r0 := @this: org.apache.log4j.lf5.viewer.configure.ConfigurationManager;	r4 := @parameter0: org.w3c.dom.Document;	$r1 = r0.<org.apache.log4j.lf5.viewer.configure.ConfigurationManager: org.apache.log4j.lf5.viewer.LogBrokerMonitor _monitor>;	r2 = virtualinvoke $r1.<org.apache.log4j.lf5.viewer.LogBrokerMonitor: org.apache.log4j.lf5.viewer.categoryexplorer.CategoryExplorerTree getCategoryExplorerTree()>();	r3 = virtualinvoke r2.<org.apache.log4j.lf5.viewer.categoryexplorer.CategoryExplorerTree: org.apache.log4j.lf5.viewer.categoryexplorer.CategoryExplorerModel getExplorerModel()>();	r5 = interfaceinvoke r4.<org.w3c.dom.Document: org.w3c.dom.NodeList getElementsByTagName(java.lang.String)>("category");	$r6 = interfaceinvoke r5.<org.w3c.dom.NodeList: org.w3c.dom.Node item(int)>(0);	r15 = interfaceinvoke $r6.<org.w3c.dom.Node: org.w3c.dom.NamedNodeMap getAttributes()>();	$r7 = virtualinvoke r0.<org.apache.log4j.lf5.viewer.configure.ConfigurationManager: java.lang.String getValue(org.w3c.dom.NamedNodeMap,java.lang.String)>(r15, "name");	$z0 = virtualinvoke $r7.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>("Categories");	if $z0 == 0 goto $z4 = 0;	$z4 = 0;	z1 = $z4;	$i0 = interfaceinvoke r5.<org.w3c.dom.NodeList: int getLength()>();	i1 = $i0 - 1;	if i1 < z1 goto return;	return
;block_num 5