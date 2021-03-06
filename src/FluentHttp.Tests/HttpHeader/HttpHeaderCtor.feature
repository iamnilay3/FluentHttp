﻿Feature: FluentHttpHeader ctor
	Check if ctor assings value correctly
	and FluentHttpHeader is constructed correctly.

@important
Scenario: Pass header name and header value as ctor params
	Given a null fluent http header
	When I create a new fluent http header with ctor params ("header-name" and "header-value")
		And I get name
		And I get value
	Then there should be no exception thrown
		And name should be "header-name"
		And value should be "header-value"

# if aggressive check
Scenario: Pass header name as null
	Given a null fluent http header
	When I create a new fluent http header with http header name as null
	Then it should throw ArgumentOutOfRangeException

Scenario: Pass header name as string.Empty
	Given a null fluent http header
	When I create a new fluent http header with http header name as string.Empty
	Then it should throw ArgumentOutOfRangeException

Scenario: Pass header name as ""
	Given a null fluent http header
	When I create a new fluent http header with http header name as ""
	Then it should throw ArgumentOutOfRangeException

Scenario: Pass header name as white space.
	Given a null fluent http header
	When I create a new fluent http header with http header name as " "
	Then it should throw ArgumentOutOfRangeException