Class {
	#name : 'ENegationTest',
	#superclass : 'TestCase',
	#category : 'MyExpressions',
	#package : 'MyExpressions'
}

{ #category : 'tests' }
ENegationTest >> testEvaluate [
	
	self assert: (ENegation new expression: (EConstant new value: 5))
		evaluate equals: -5

]

{ #category : 'tests' }
ENegationTest >> testEvaluateWithClassCreationMessage [
	
	self assert: (ENegation expression: (EConstant value: 5)) evaluate
		equals: -5

]

{ #category : 'tests' }
ENegationTest >> testNegatedStructureIsCorrect [
	
	| exp |
	exp := EConstant value: 11.
	self assert: exp negated class = ENegation.
	self assert: exp negated negated equals: exp

]

{ #category : 'tests' }
ENegationTest >> testNegationNegated [
	
	self assert: (EConstant new value: 6) negated negated evaluate
		equals: 6

]
