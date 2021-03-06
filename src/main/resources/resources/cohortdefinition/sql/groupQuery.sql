select @indexId as index_id, event_id
FROM
(
  select E.event_id 
  FROM @eventTable E
  LEFT JOIN
  (
    @criteriaQueries
  ) CQ on E.event_id = CQ.event_id
  GROUP BY E.event_id
  @intersectClause
) G
