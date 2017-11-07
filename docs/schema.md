### User
  * has_many :planned_events, class: :events
  * has_many :invitations, class: :events, through: :invites
  * -> { where { invitation: attending == true } }
  * name:string

### Events
  * has_many :invitees
  * belongs_to :user
  * date:datetime, location:string

### Invitations
  * belongs_to :host, class: user
  * belongs_to :invitee, class
