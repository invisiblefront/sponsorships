/*var New_sponsor = React.createClass({

  getInitialState: function() {
    return {
      name: "",
      email: ""
    };
  },
  
  handleNameChange: function(event) {
    this.setState({
      name: event.target.value
    });
  },

  handleEmailChange: function(event) {
    this.setState({
      email: event.target.value
    });
  },

  add: function(event){

      //9 tab
      //13 enter

        if(event.keyCode == 9){

          

           $(event.target).css({border:"none"})
           console.log(this.state.name);
        }
  },

  render: function() {
    return <div className="question">my name is 
    <input className="q1" value={this.state.name} onChange={this.handleNameChange} onKeyDown={this.add} />and my email is
    <input className="q2" value={this.state.email} onChange={this.handleEmailChange} onKeyDown={this.add} />
    </div>;
  }
});*/


var New_project_owner = React.createClass({

  getInitialState: function() {
    return {
      value: "init"
    };
  },
  
  render: function() {
    return  <div className="input-group">
      <span className="form-control">{this.props.owner_name} | {this.props.owner_email}</span>
      <span className="input-group-btn">
      <button className="btn btn-secondary" type="button">x</button>
      </span>
    </div>
  }
});

var New_project_owner_list = React.createClass({
  render: function() {
    var project_owner_Nodes = this.props.data.map(function (datza) {
      return (
        <New_project_owner owner_name={p_data.owner_name} owner_email={p_data.owner_email}></New_project_owner>
      );
    });
    return (
      <section>
        {project_owner_Nodes}
      </section>
    );
  }
});


var CommentBox = React.createClass({
  render: function() {
    return (
      <div className="commentBox">
        Hello, world! I am a CommentBox.
      </div>
    );
  }
});